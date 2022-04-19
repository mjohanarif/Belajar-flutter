import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TabBar myTabBar = TabBar(
    indicator: BoxDecoration(
      color: Colors.red,
      border: Border(
        top: BorderSide(color: Colors.purple, width: 5),
      ),
    ),
    tabs: [
      Tab(
        icon: Icon(
          Icons.comment,
        ),
        text: "Comments",
      ),
      Tab(
        icon: Icon(
          Icons.computer,
        ),
        text: "Computer",
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contoh Tab Bar'),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(
                  child: myTabBar,
                  color: Colors.amber,
                )),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
          ]),
        ),
      ),
    );
  }
}
