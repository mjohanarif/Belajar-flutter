import 'package:flutter/material.dart';

import 'get_many_page.dart';
import 'get_page.dart';
import 'post_page.dart';
import 'post_result_model.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostPage()));
              },
              child: Text('Post page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetPage()));
              },
              child: Text('Get 1 page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetManyPage()));
              },
              child: Text('Get many page'),
            ),
          ],
        ),
      ),
    );
  }
}
