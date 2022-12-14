import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "š List of Fruits",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
          //leading: Icon(Icons.menu),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "š Apple",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 40,
                wordSpacing: 2,
                letterSpacing: 3,
              ),
              children: [
                const TextSpan(
                  text: "\nš Greps",
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\nš Cherry",
                  style: TextStyle(
                    color: Colors.purple.shade800,
                    fontSize: 40,
                    decoration: TextDecoration.none,
                  ),
                ),
                const TextSpan(
                  text: "\nš Strawberry",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\nš„­ Mango",
                  style: TextStyle(
                    color: Colors.orange.shade600,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\nš Pineapple",
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\nš Lemon",
                  style: TextStyle(
                    color: Colors.amber.shade500,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\nš Watermelon",
                  style: TextStyle(
                    color: Colors.green.shade500,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\nš„„ Coconut",
                  style: TextStyle(
                    color: Colors.brown.shade700,
                    fontSize: 40,
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
