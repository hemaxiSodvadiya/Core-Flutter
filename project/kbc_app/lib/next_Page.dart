import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TextStyle textStyle = const TextStyle(
    fontSize: 26,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "Image/fire-cracker.png",
              width: 100,
              height: 100,
            ),
            const Text(
              "Your Answer Is Correct",
              style: TextStyle(
                fontSize: 28,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "You won\n₹${args.money}",
              style: TextStyle(
                fontSize: 28,
                color: Color(0xffc78640),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Color(0xffd6d6d6),
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
