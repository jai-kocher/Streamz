// import 'dart:io';
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:streamz/login_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'signup_page.dart';
import 'test_page.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.black,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
            ),
          ),
          fontFamily: 'Bebas Neue',
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            toolbarHeight: 40,
            color: Colors.white,
          )),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/test': (context) => TestPage(),
      },
      initialRoute: '/test',
    );
  }
}
