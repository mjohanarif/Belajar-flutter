import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 3),
    ),
  );
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Switcher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: myWidget,
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
              ),
              Switch(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.red[200],
                  value: isOn,
                  onChanged: (onValue) {
                    isOn = onValue;
                    setState(() {
                      isOn == true
                          ? myWidget = myWidget = Container(
                              key: ValueKey('1'),
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                border:
                                    Border.all(color: Colors.black, width: 3),
                              ),
                            )
                          // myWidget = SizedBox(
                          //     width: 200,
                          //     height: 100,
                          //     child: Center(
                          //       child: Text(
                          //         'Switch ON',
                          //         style: TextStyle(
                          //             color: Colors.green,
                          //             fontWeight: FontWeight.w700,
                          //             fontSize: 20),
                          //       ),
                          //     ),
                          //   )
                          : myWidget = Container(
                              key: ValueKey('2'),
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border:
                                    Border.all(color: Colors.black, width: 3),
                              ),
                            );
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
