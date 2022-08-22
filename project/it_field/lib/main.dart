import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Red & White",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.red.shade400,
          centerTitle: true,
          //leading: Icon(Icons.menu),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "          G",
              style: const TextStyle(
                color: Colors.green,
                fontSize: 30,
                wordSpacing: 2,
                letterSpacing: 1,
              ),
              children: [
                const TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "APHICS",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                const TextSpan(
                  text: "\n  FLUTT",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "\n        AN",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "D",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "ROID",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "\nDESING",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "&",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "DEVELOP",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "\n          W",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "EB",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "\n       FAS",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "H",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "ION",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "\n ANIMAT",
                  style: TextStyle(
                    color: Colors.teal.shade700,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "I",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "ON",
                  style: TextStyle(
                    color: Colors.teal.shade700,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "\n             I",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "T",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "A-CS+",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "\n      GAM",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 30,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
