import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: My(),
    ),
  );
}

class My extends StatefulWidget {
  @override
  State<My> createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  String equation = '0';
  String result = '0';
  String expression = '';

  buttonPressed(String btex) {
    setState(() {
      if (btex == "AC") {
        equation = "0";
        result = "0";
      } else if (btex == "=") {
        expression = equation;

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == "0") {
          equation = btex;
        } else {
          equation = equation + btex;
        }
      }
    });
  }

  Widget calcbutton(String btex, Color bcolor, Color tcolor) {
    return Container(
      height: 80,
      width: 125,
      alignment: Alignment.center,
      child: InkWell(
        onTap: () => buttonPressed(btex),
        child: Ink(
          child: Text(
            btex,
            style: TextStyle(
              fontSize: 22,
              color: tcolor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2e2d32),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Text(
              equation,
              style: TextStyle(
                color: Color(0xff8d8d8d),
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.topRight,
            child: Text(
              result,
              style: TextStyle(
                color: Color(0xff8d8d8d),
                fontSize: 70,
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 40, right: 30),
                height: 60,
                width: 180,
                child: TextButton(
                  onPressed: () => buttonPressed('AC'),
                  child: Text(
                    'AC',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffff5a66)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
              ),
              calcbutton('%', Color(0xff2e2d32), Color(0xff8d8d8d)),
              calcbutton('/', Color(0xff2e2d32), Color(0xffff5a66)),
            ],
          ),
          Row(
            children: [
              calcbutton('7', Color(0xffff5a66), Colors.white),
              calcbutton('8', Color(0xff2e2d32), Colors.white),
              calcbutton("9", Color(0xff2e2d32), Colors.white),
              calcbutton('*', Color(0xff2e2d32), Color(0xffff5a66)),
            ],
          ),
          Row(
            children: [
              calcbutton('4', Color(0xffff5a66), Colors.white),
              calcbutton('5', Color(0xff2e2d32), Colors.white),
              calcbutton('6', Color(0xff2e2d32), Colors.white),
              calcbutton('-', Color(0xff2e2d32), Color(0xffff5a66)),
            ],
          ),
          Row(
            children: [
              calcbutton('1', Color(0xffff5a66), Colors.white),
              calcbutton('2', Color(0xff2e2d32), Colors.white),
              calcbutton('3', Color(0xff2e2d32), Colors.white),
              calcbutton('+', Color(0xff2e2d32), Color(0xffff5a66)),
            ],
          ),
          Row(
            children: [
              calcbutton('00', Color(0xffff5a66), Colors.white),
              calcbutton('0', Color(0xff2e2d32), Colors.white),
              calcbutton('.', Color(0xff2e2d32), Colors.white),
              Container(
                margin: EdgeInsets.only(left: 35, bottom: 20),
                height: 70,
                width: 70,
                child: TextButton(
                  onPressed: () => buttonPressed('='),
                  child: Text(
                    '=',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffff5a66)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xff2e2d32),
    );
  }
}
