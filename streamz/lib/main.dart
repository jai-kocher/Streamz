// import 'dart:io';
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:streamz/screens/login_page.dart';
import 'screens/login_page.dart';
import 'screens/home_page.dart';
import 'screens/signup_page.dart';
import 'screens/menu_page.dart';
import 'screens/genre_page.dart';

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
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          ),
          fontFamily: 'Bebas Neue',
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            toolbarHeight: 40,
            color: Colors.black,
          )),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/menu': (context) => MenuPage(),
        '/genres': (context) => GenrePage()
      },
      initialRoute: '/home',
    );
  }
}
