// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:streamz/constants.dart';
import 'package:streamz/option_button.dart';

class HomePage extends StatelessWidget {
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
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'WELCOME TO STREAMZ!\n',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              OptionButton(
                textData: 'New User? Sign Up!',
                nextPage: '/signup',
              ),
              SizedBox(
                height: 40,
              ),
              OptionButton(
                textData: 'ALREADY A USER? LOGIN!',
                nextPage: '/login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
