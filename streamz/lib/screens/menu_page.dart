// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../utilities/image_card.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'STREAMZ',
          style: textStyle2
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Most Popular',
              style: textStyle1,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg',
                    destination: '/movie',
                  ),
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
                    destination: '/movie',
                  ),
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
                    destination: '/movie',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Oscar Winning Movies',
              style: textStyle1,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg',
                    destination: '/movie',
                  ),
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
                    destination: '/movie',
                  ),
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
                    destination: '/movie',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Relax',
              style: textStyle1,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg',
                    destination: '/movie',
                  ),
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
                    destination: '/movie',
                  ),
                  ImageButton(
                    url:
                        'https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
                    destination: '/movie',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}