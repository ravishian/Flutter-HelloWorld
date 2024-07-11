import 'package:c1/pages/Loginpage.dart';
import 'package:c1/pages/image.dart';
import 'package:flutter/material.dart';
import "pages/Login.dart";

void main() {
  runApp(MyApp());
}

  class MyApp extends StatelessWidget
  {
    @override
    Widget build(BuildContext context)
  {
    return MaterialApp(
    //  home: HomePage(),

      initialRoute: "/image",
      routes: {
        "/" :(context) => loginpage(),
        "/home" :(context) => HomePage(),
        "/image" :(context) => ImagePage(),
      },
    );
  }
  }


