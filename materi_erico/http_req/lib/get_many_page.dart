import 'package:flutter/material.dart';
import 'package:http_req/user_many_model.dart';
import 'user_model.dart';

class GetManyPage extends StatefulWidget {
  @override
  State<GetManyPage> createState() => _GetManyPageState();
}

class _GetManyPageState extends State<GetManyPage> {
  String output = 'no data';
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
              Text(output),
              ElevatedButton(
                onPressed: () {
                  UserMany.getUsers('2').then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++) {
                      output += '[ ' + users[i].name + ' ]';
                    }
                    setState(() {});
                  });
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
