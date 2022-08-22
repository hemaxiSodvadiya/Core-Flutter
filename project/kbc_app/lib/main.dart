import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'false_Page.dart';
import 'home_Page.dart';
import 'image_Page.dart';
import 'next_Page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.grey,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(
        const MainPage(),
      ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => const HomePage(),
        // "next_page": (context) => const NextPage(),
        // "false_Page": (context) => const falsePage(),
        // "Image_page": (context) => const ImagePage(),
      },
    );
  }
}

// MaterialApp(
// debugShowCheckedModeBanner: false,
// initialRoute: '/',
// routes: {
// "/": (context) => const HomePage(),
// "next_page": (context) => const NextPage(),
// "false_Page": (context) => const falsePage(),
// "Image_page": (context) => const ImagePage(),
// },
// ),
