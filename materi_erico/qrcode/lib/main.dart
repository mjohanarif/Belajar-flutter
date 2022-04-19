import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            version: 10,
            // backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(30),
            size: 300,
            data:
                'https://www.notion.so/kodingworks/Flutter-Tutorial-Flutter-Fundamentals-Chapter-1-Erico-Darmawan-Video-24-33-4-bf1875fdf269481794f0701addf84f13',
          ),
        ),
      ),
    );
  }
}
