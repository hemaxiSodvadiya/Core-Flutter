import 'package:flutter/material.dart';

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
  // double sliderVal=0;
  double _height = 170.0;
  double _weight = 0;
  //double _weight=75.0;
  // int _bmi=0;
  @override
  Widget build(BuildContext context) {
    // Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff02061b),
      appBar: AppBar(
        backgroundColor: const Color(0xff02061b),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        /*  mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,*/
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 25, top: 5),
            child: Row(
              children: [
                SizedBox(width: 20),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 230,
                    width: 212,
                    decoration: BoxDecoration(
                      color: Color(0xff1d1e33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.female_sharp,
                                size: 100,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                                text: "\n\n Female",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                )),
                          ],
                        ),
                      ),
                    )), //female
                SizedBox(width: 20),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 14),
                    height: 230,
                    width: 212,
                    decoration: BoxDecoration(
                      color: Color(0xff38394b),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.male,
                                size: 100,
                                color: Color(0xffeb1555),
                              ),
                            ),
                            TextSpan(
                                text: "\n\n   Male",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                )),
                          ],
                        ),
                      ),
                    )), // male
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            decoration: BoxDecoration(
              color: Color(0xff1d1e33),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 230,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 20, color: Color(0xff626473)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                      text: "$_height ",
                      style: const TextStyle(color: Colors.white, fontSize: 60),
                      children: const [
                        TextSpan(
                          text: " cm",
                          style: TextStyle(
                              color: Color(0xFF403f3d),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                SizedBox(height: 20),
                Slider(
                  value: _height,
                  min: 0,
                  max: 250,
                  onChanged: (height) {
                    setState(() {
                      _height = height;
                    });
                  },
                  divisions: 250,
                  label: "$_height",
                  activeColor: Color(0xfff5c1d1),
                  inactiveColor: Color(0xff555555),
                  thumbColor: Color(0xffeb1555),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Container(
                  height: 230,
                  width: 212,
                  decoration: BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: const Center(
                          child: Text(
                            "Weight",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Center(
                          child: Text(
                            "60",
                            style: TextStyle(fontSize: 60, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.white.withOpacity(1),
                                splashFactory: InkRipple.splashFactory,
                                onTap: () {
                                  setState(() {
                                    print("-");
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xff4c4f5e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.pink.withOpacity(1),
                                splashFactory: InkRipple.splashFactory,
                                onTap: () {
                                  setState(() {
                                    print("+");
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xff6e6f7a),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  height: 230,
                  width: 212,
                  decoration: BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Center(
                          child: Text(
                            "Age",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Center(
                          child: Text(
                            "28",
                            style: TextStyle(fontSize: 60, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 25, right: 25, top: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.white.withOpacity(1),
                                splashFactory: InkRipple.splashFactory,
                                onTap: () {
                                  print("-");
                                },
                                child: Ink(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xff4c4f5e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: InkWell(
                                splashColor: Colors.pink.withOpacity(1),
                                splashFactory: InkRipple.splashFactory,
                                onTap: () {
                                  print("+");
                                },
                                child: Ink(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xff6e6f7a),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 53,
          ),
          Container(
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: () {
                print("00");
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 25, right: 25, top: 10, bottom: 10),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffeb1555),
                        border: Border.all(
                          color: Color(0xffeb1555),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Calculator",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
