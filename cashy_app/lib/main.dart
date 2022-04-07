import 'package:cashy_app/colors.dart';
import 'package:cashy_app/font_styyle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Cashy'),
            backgroundColor: darkBlue,
          ),
          body: SafeArea(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 23, top: 4, right: 23, bottom: 0),
              padding:
                  const EdgeInsets.only(left: 0, top: 50, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/image.jpg'),
                        height: 200,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Text(
                          'Rich Together',
                          style: mainHeader,
                        ),
                      ),
                      Text(
                        'Save your money little bit and we \nwill help to be rich',
                        style: subHeader,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
