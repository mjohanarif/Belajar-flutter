import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String texts = 'Hasil QR Scan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(texts),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // await Permission.camera.request();
                await Permission.camera.request();
                texts = await scanner.scan();
                if (texts == null) {
                  print('nothing return.');
                } else {
                  print(texts);
                }
                setState(() {});
              },
              child: Text('Scan'),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
