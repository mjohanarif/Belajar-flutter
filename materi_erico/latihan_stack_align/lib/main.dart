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
          title: Text('Latihan Stack Align'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Colors.white,
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.black12,
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Colors.black12,
                        ),
                        flex: 1,
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.white,
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  flex: 1,
                )
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Ini adalah text yang ada di lapisan tengah stack',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0.9, 0.9),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('My Button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
