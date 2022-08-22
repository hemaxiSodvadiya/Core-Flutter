import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const  Spacer(),
            Image.asset("Image/fire-cracker.png",
              width:100,
              height: 100,),
            const SizedBox(height: 50,),
            const Text("Congratulations",
              style: TextStyle(
                fontSize: 28,
                color: Color(0xff5b5f62),
                fontWeight: FontWeight.w100,
              ),),
            const SizedBox(height: 70,),
            const Text("Game over",
              style: TextStyle(
                fontSize: 28,
                color: Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),),
            const SizedBox(height: 90,),
            ElevatedButton(
              child: const Text("Restart",
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),),
              onPressed: (){
                Navigator.of(context).pushNamed("/");
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 90,
                  vertical: 30,),
                primary : const Color(0xff1e1f23),
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
