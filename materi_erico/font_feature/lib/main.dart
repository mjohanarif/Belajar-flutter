import 'dart:ui';

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
              title: Text('flutter Typography'),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Contoh 01 (Tanpa apapun)',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Contoh 02 (Small Caps)',
                      style: TextStyle(
                          fontSize: 20,
                          fontFeatures: [FontFeature.enable('smcp')]),
                    ),
                    Text(
                      'Contoh 3 1/2 (Small Caps & Frac)',
                      style: TextStyle(fontSize: 20, fontFeatures: [
                        FontFeature.enable('smcp'),
                        FontFeature.enable('frac'),
                      ]),
                    ),
                    Text(
                      'Contoh 3 1/2 (Small Caps & Frac)',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Milonga',
                          fontFeatures: [
                            FontFeature.enable('smcp'),
                            FontFeature.enable('frac'),
                          ]),
                    ),
                    Text(
                      'Contoh Cardo 19(Tanpa apapun)',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Cardo',
                          fontFeatures: [
                            // FontFeature.oldstyleFigures()
                          ]),
                    ),
                    Text(
                      'Contoh Cardo 19(Old Style)',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Cardo',
                          fontFeatures: [FontFeature.oldstyleFigures()]),
                    ),
                    Text(
                      'Contoh Gabriola(Tanpa apapun)',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Gabriola',
                      ),
                    ),
                    Text(
                      'Contoh Gabriola(Style set nomor 5)',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Gabriola',
                          fontFeatures: [FontFeature.stylisticSet(5)]),
                    ),
                  ]),
            )));
  }
}
