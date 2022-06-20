// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../utilities/genre_button.dart';
//import 'g'

class GenrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'STREAMZ',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: appTextRedColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GenreButton(
              col: appTextRedColor,
              genre: 'Science Fiction',
              destination: '/menu',
            ),
            GenreButton(
              col: Colors.yellowAccent,
              genre: 'Horror',
              destination: '/menu',
            ),
            GenreButton(
              col: Colors.lightBlueAccent,
              genre: 'Comedy',
              destination: '/menu',
            ),
            GenreButton(
              col: Colors.lightGreenAccent,
              genre: 'Science Fiction',
              destination: '/menu',
            ),
          ],
        ),
      ),
    );
  }
}