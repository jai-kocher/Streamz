// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'constants.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({required this.textData, required this.nextPage});

  final String textData;
  final String nextPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(250, 50),
        primary: appTextRedColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: (() {
        Navigator.pushNamed(context, nextPage);
      }),
      child: Text(
        textData,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
