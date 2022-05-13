import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isOn = false;
  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', controller.text);
    pref.setBool('ison', isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? 'No Name';
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Shared preference')),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: controller,
              ),
              Switch(
                  value: isOn,
                  onChanged: (newValue) {
                    setState(() {
                      isOn = newValue;
                    });
                  }),
              ElevatedButton(
                onPressed: saveData,
                child: Text('save'),
              ),
              ElevatedButton(
                onPressed: () {
                  getNama().then((value) {
                    controller.text = value;
                    setState(() {});
                  });
                  getOn().then((value) {
                    isOn = value;
                    setState(() {});
                  });
                },
                child: Text('Load'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
      ),
    );
  }
}
