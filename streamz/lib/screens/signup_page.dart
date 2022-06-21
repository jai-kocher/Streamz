// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:streamz/utilities/constants.dart';
import '../utilities/input_field.dart';
import '../utilities/option_button.dart';

class SignupDetails {
  SignupDetails(
      {required this.pno,
      required this.email,
      required this.username,
      required this.password});

  String username, password, email;
  double pno;

  void setUsername(uname) {
    username = uname;
  }

  void setPassword(passwd) {
    password = passwd;
  }

  void setPNO(pn) {
    pno = pn;
  }

  void setEmail(em) {
    email = em;
  }
}

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              // InputField(
              //   typeText: 'EMAIL',
              //   showText: true,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // InputField(
              //   typeText: 'Phone Number',
              //   showText: true,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // InputField(
              //   typeText: 'Username',
              //   showText: true,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // InputField(
              //   typeText: 'Password',
              //   showText: false,
              // ),
              SizedBox(
                height: 10,
              ),
              OptionButton2(
                textData: 'SIGNUP',
                destination: '/genres',
              )
            ],
          ),
        ),
      ),
    );
  }
}
