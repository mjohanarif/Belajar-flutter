import 'package:flutter/material.dart';
import 'user_model.dart';

class GetPage extends StatefulWidget {
  @override
  State<GetPage> createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  User user = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(user != null
                  ? user.id + ' | ' + user.name
                  : 'Tidak ada data'),
              ElevatedButton(
                onPressed: () {
                  User.connectApi('3').then((value) => user = value);
                  setState(() {});
                },
                child: Text('Get'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
