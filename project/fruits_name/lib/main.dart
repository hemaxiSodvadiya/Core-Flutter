import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "🛍 List of Fruits",
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
              text: "🍎 Apple",
              style: const TextStyle(
                color: Colors.red,
                fontSize: 40,
                wordSpacing: 2,
                letterSpacing: 3,
              ),
              children: [
                const TextSpan(
                  text: "\n🍇 Greps",
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\n🍒 Cherry",
                  style: TextStyle(
                    color: Colors.purple.shade800,
                    fontSize: 40,
                    decoration: TextDecoration.none,
                  ),
                ),
                const TextSpan(
                  text: "\n🍓 Strawberry",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\n🥭 Mango",
                  style: TextStyle(
                    color: Colors.orange.shade600,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\n🍍 Pineapple",
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\n🍋 Lemon",
                  style: TextStyle(
                    color: Colors.amber.shade500,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\n🍉 Watermelon",
                  style: TextStyle(
                    color: Colors.green.shade500,
                    fontSize: 40,
                  ),
                ),
                TextSpan(
                  text: "\n🥥 Coconut",
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
