import 'package:flutter/material.dart';
import 'package:kbc_app/question_Bank.dart';

import 'image_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style = const TextStyle(fontSize: 20, color: Color(0xffa8a8a9));

  Color color = const Color(0xff1e1f23);

  int options = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
      ),
      // body: IndexedStack(
      //   children: question
      //       .map(
      //         (e) => displayQuestion(),
      //       )
      //       .toList(),
      // ),
    );
  }

  Widget displayQuestion() {
    return (options == 10)
        ? const ImagePage()
        : Column(
            children: [
              Expanded(
                flex: 1,
                child: IndexedStack(
                  index: options,
                  children: question.map((e) => e.que).toList(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black,
                  child: IndexedStack(
                    index: options,
                    children: question.map((e) => displayAnswer(e)).toList(),
                  ),
                ),
              ),
            ],
          );
  }

  Widget displayAnswer(a) {
    return (options == 10)
        ? const ImagePage()
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                          color: color, borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: options,
                        children: question
                            .map(
                              (e) => Text("A. ${e.a}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (options == 2) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          options++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                          color: color, borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: options,
                        children: question
                            .map(
                              (e) => Text("B. ${e.b}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (options == 5 || options == 7 || options == 8) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          options++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                          color: color, borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: options,
                        children: question
                            .map(
                              (e) => Text("C. ${e.c}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (options == 4 || options == 6 || options == 9) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          options++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                          color: color, borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: options,
                        children: question
                            .map(
                              (e) => Text("D. ${e.d}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (options == 0 || options == 1 || options == 3) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          options++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          );
  }
}
