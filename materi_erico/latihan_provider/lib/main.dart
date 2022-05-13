import 'package:flutter/material.dart';
import 'package:latihan_provider/provider_1.dart';
import 'package:latihan_provider/provider_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Provider 1'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProviderPage(),
                    ));
              },
            ),
            ElevatedButton(
              child: Text('Provider 2'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProviderManyPage(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
