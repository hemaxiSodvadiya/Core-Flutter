import 'package:flutter/material.dart';
import 'dart:math';

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
  Random r1 = Random();
  List colors = [
    Color(0xffe26262),
    Color(0xff4ec399),
    Color(0xff547eea),
    Color(0xffdc78ff),
    Color(0xffcff878),
    Color(0xffc8cc1c),
    Color(0xffecc4c4),
    Color(0xff873e23),
    Color(0xff154c79),
    Color(0xff8600b3),
    Color(0xff0052cc),
    Color(0xff00cc99),
    Color(0xffbfff80),
    Color(0xff330033),
    Color(0xff663300),
    Color(0xffccccff),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xfffffff),
                  Color(0xffd8e6f4),
                ])),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Color Palette\nGenerator",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff3eb3f9),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Column(
                  children: List.generate(
                      6,
                      (index) => Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                              color: colors[r1.nextInt(16)],
                              borderRadius: radiusFinder(index),
                            ),
                          )),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text(
                    "Generate",
                    style: TextStyle(
                        color: Color(0xff3bb3f9),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xff3bb3f9),
                      width: 2,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 80,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  radiusFinder(int n) {
    if (n == 0) {
      return const BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20));
    } else if (n == 5) {
      return const BorderRadius.only(
          bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20));
    } else {
      BorderRadius.circular(0);
    }
  }
}
