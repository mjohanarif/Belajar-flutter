import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
              backgroundColor: Colors.amber,
              flexibleSpace: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Text('Appbar with custom height',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ),
              )),
        ),
      ),
    );
  }
}
