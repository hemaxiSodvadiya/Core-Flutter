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
  int length = 0;
  List l1 = ["0", "0", "0", "0", "0", "0"];
  TextEditingController lengthControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          const Text(
            "OTP Generator",
            style: TextStyle(
                color: Color(0xfff6db87),
                fontSize: 40,
                fontWeight: FontWeight.w400),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextField(
              controller: lengthControler,
              keyboardType: TextInputType.number,
              maxLength: 1,
              onChanged: (val) {
                length = int.parse(val);
              },
              style: const TextStyle(
                  color: Color(0xffcf6ba),
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                counterText: "",
                hintText: "Enter OTP Length.",
                hintStyle: TextStyle(
                  color: const Color(0xffcf6ba).withOpacity(0.35),
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
                alignLabelWithHint: true,
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFcf6ba),
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFcf6ba),
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          Buttons(
            texts: "Generate OTP",
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.07,
            onTap: () {
              l1.clear();
              setState(() {
                if (length > 0) {
                  for (int i = 0; i < length; i++) {
                    l1.add(r1.nextInt(9).toString());
                  }
                } else {
                  l1 = ["0", "0", "0", "0", "0", "0"];
                  length = 0;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Enter Valid Length!"),
                    ),
                  );
                }
              });
            },
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: l1
                  .map((e) => Text(
                        e,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ))
                  .toList(),
            ),
            width: MediaQuery.of(context).size.width * 0.855,
            height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              color: const Color(0xffffe8b8),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Buttons(
            texts: "Reset",
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.06,
            onTap: () {
              setState(() {
                l1 = ["0", "0", "0", "0", "0", "0"];
                lengthControler.clear();
                length = 0;
              });
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xff15172b),
    );
  }

  Buttons({
    required String texts,
    width,
    height,
    onTap,
  }) {
    return InkWell(
        onTap: onTap,
        //splashColor: Colors.amber,
        borderRadius: BorderRadius.circular(30),
        child: Ink(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xfffcf6ba).withOpacity(0.50),
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [Color(0xffffe8b8), Color(0xffF6db87)]),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              texts,
              style: const TextStyle(
                color: Color(0xff15172b),
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            width: width,
            height: height,
          ),
        ));
  }
}
