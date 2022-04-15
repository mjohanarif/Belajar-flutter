import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan TextField'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  suffixIcon: Icon(Icons.edit),
                  prefixIcon: Icon(Icons.person),
                  prefix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  // prefixText: "Name: ",
                  // prefixStyle: TextStyle(
                  //     color: Colors.blue, fontWeight: FontWeight.bold),
                  labelText: "Nama Lengkap",
                  labelStyle: TextStyle(),
                  hintText: 'Nama lengkapnya lho...',
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                maxLength: 5,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
