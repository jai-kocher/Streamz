import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:streamz/screens/menu_page.dart';
import '../utilities/genre_button.dart';
import '../utilities/constants.dart';
//import 'movie_page.dart';

class GenrePage extends StatefulWidget {
  @override
  State<GenrePage> createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  var _genres = [];
  void getData() async {
    var url = 'http://127.0.0.1:3000/genre/';
    try {
      print('hi');
      final response = await get(Uri.parse(url));
      final data = jsonDecode(response.body) as List;
      setState(() {
        _genres = data;
      });
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
        title: Text(
          'STREAMZ',
          style: textStyle2,
        ),
      ),
      body: ListView.builder(
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          final post = _genres[i];
          return GenreButton(
            col: appTextRedColor,
            genre: '${post['genre_name']}',
            onP: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MenuPage(
                    genre_id: post['genre_id'],
                    genre_name: post['genre_name'],
                  ),
                ),
              );
            },
          );
        },
        itemCount: _genres.length,
      ),
    );
  }
}
