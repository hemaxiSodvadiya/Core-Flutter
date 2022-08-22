import 'package:flutter/material.dart';

class falsePage extends StatefulWidget {
  const falsePage({Key? key}) : super(key: key);

  @override
  State<falsePage> createState() => _falsePageState();
}

class _falsePageState extends State<falsePage> {
  TextStyle _style =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/lose.png", width: 100),
            const SizedBox(height: 20),
            Text(
              "oops!",
              style: _style,
            ),
            const SizedBox(height: 40),
            Text(
              "Sorry you are \n\t\t\t the lose",
              style: _style,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white10,
                onPrimary: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              ),
              child: const Text(
                "Try Again",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
