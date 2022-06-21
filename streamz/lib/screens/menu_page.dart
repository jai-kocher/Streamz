// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../utilities/image_card.dart';
import 'package:http/http.dart';
import 'movie_page.dart';
import 'dart:convert';

class MenuPage extends StatefulWidget {
  var genre_id;
  var genre_name;
  MenuPage({Key? key, this.genre_id, this.genre_name}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  var _movies = [];
  void getData() async {
    var url = 'http://127.0.0.1:3000/genre/poster/${widget.genre_id}';
    try {
      //print(widget.genre_id);
      final response = await get(Uri.parse(url));
      final data = jsonDecode(response.body) as List;
      setState(() {
        _movies = data;
      });
      //print(_movies);
    } catch (err) {}
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STREAMZ', style: textStyle2),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Text(
            '${widget.genre_name} MOVIES',
            style: textStyle2.copyWith(
              fontSize: 50,
            ),
          ),
          SizedBox(width: double.infinity, height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var post in _movies)
                  Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: LabeledImage(
                            url: post['url'],
                            height: 450,
                            width: 300,
                            labelText: post['movie_name'],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MoviePage(movie_id: post['movie_id'])));
                          }),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
