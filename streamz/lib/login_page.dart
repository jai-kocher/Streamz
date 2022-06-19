// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:streamz/constants.dart';
import 'input_field.dart';

class LoginPage extends StatelessWidget {
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
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME TO STREAMZ!\n',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              // Text(
              //   'PLEASE LOGIN',
              //   style: TextStyle(
              //     fontSize: 40,
              //   ),
              // ),
              InputField(
                typeText: 'Username',
                showText: true,
              ),
              SizedBox(
                height: 10,
              ),
              InputField(
                typeText: 'Password',
                showText: false,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 50),
                  primary: appTextRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: (() {}),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
