// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../utilities/image_card.dart';
import '../utilities/option_button.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STREAMZ', style: textStyle2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              ImageCard(
                url:
                    'https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg',
                height: 300,
                width: 200,
              ),
              SizedBox(height: 10),
              Text(
                'AVATAR',
                style: textStyle2.copyWith(color: Colors.white),
              ),
              Text(
                '2009, 20TH CENTURY FOX',
                style: textStyle1,
              ),
              Text(
                'ENGLISH',
                style: textStyle1,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '7.8',
                    style: textStyle1,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.hd_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OptionButton2(textData: 'BUY ₹600', destination: '/cart'),
                  SizedBox(width: 20),
                  OptionButton2(textData: 'RENT ₹50', destination: '/cart'),
                ],
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'PLOT',
                  style: textStyle1,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Jake, who is paraplegic, replaces his twin on the Na\'vi inhabited Pandora for a corporate mission. After the natives accept him as one of their own, he must decide where his loyalties lie.',
                  style: textStyle3,
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'CAST',
                  style: textStyle1,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      LabeledImage(
                        url:
                            'https://upload.wikimedia.org/wikipedia/commons/6/6c/Sam_Worthington_2013.jpg',
                        height: 200,
                        width: 133,
                        labelText: 'Sam Worthington',
                      ),
                      LabeledImage(
                        url:
                            'https://cdn.britannica.com/17/215017-050-0E006005/American-actress-Zoe-Saldana-2018.jpg',
                        height: 200,
                        width: 133,
                        labelText: 'Zoe Saldana',
                      ),
                      // ImageCard(
                      //   url:
                      //       'https://upload.wikimedia.org/wikipedia/commons/6/6c/Sam_Worthington_2013.jpg',
                      //   height: 200,
                      //   width: 133,
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'DIRECTOR',
                  style: textStyle1,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: LabeledImage(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/f/fe/James_Cameron_by_Gage_Skidmore.jpg',
                  height: 200,
                  width: 133,
                  labelText: 'James Cameron',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}