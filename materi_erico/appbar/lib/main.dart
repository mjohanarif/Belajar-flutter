import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0096ff),
                Color(0xff6610f2),
              ],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.picpng.com/seamless/seamless-repeating-pattern-50590.png'),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat),
          ),
        ),
        leading: Icon(Icons.adb, color: Colors.white),
        title: Text(
          'Appbar Example',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
        ],
      )),
    );
  }
}
