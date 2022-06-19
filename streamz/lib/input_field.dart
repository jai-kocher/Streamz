// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'constants.dart';

class InputField extends StatelessWidget {
  final String typeText;
  final bool showText;

  const InputField({required this.typeText, required this.showText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      //textCapitalization: TextCapitalization.characters,
      //keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      style: TextStyle(
        fontSize: 25,
        fontFamily: 'Roboto',
      ),
      obscureText: !showText,
      decoration: InputDecoration(
        labelText: typeText,
        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Bebas Neue'),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: appTextRedColor,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}