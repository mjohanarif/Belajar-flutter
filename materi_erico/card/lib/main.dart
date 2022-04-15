import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: ListView(
          children: [
            buildCard(Icons.account_box, 'Account Box'),
            buildCard(Icons.adb, 'Serangga Android'),
          ],
        ),
        margin: EdgeInsets.all(10),
      ),
    ));
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              iconData,
              color: Colors.lightBlue,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
