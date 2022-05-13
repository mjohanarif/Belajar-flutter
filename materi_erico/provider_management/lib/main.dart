import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_management/application_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (BuildContext context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Text(
                'Provider State Management',
                style: TextStyle(color: applicationColor.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer(
                  builder: (context, applicationColor, child) =>
                      AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: applicationColor.color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('AB'),
                      margin: EdgeInsets.all(5),
                    ),
                    Consumer(
                        builder: (context, applicationColor, child) => Switch(
                            value: applicationColor.isLighBlue,
                            onChanged: (newValue) {
                              applicationColor.isLightBlue = newValue;
                            })),
                    Container(
                      child: Text('LB'),
                      margin: EdgeInsets.all(5),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
