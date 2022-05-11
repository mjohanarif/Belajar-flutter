import 'dart:convert';

import 'package:http/http.dart' as http;

class UserMany {
  String id;
  String name;
  UserMany({this.id, this.name});

  factory UserMany.createUser(Map<String, dynamic> object) {
    return UserMany(
      id: object['id'].toString(),
      name: object['first_name'] + ' ' + object['last_name'],
    );
  }
  static Future<List<UserMany>> getUsers(String page) async {
    String apiURL = 'https://reqres.in/api/users?page=' + page;
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);

    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<UserMany> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(UserMany.createUser(listUser[i]));
    }
    return users;
    // return UserMany.createUser(listUser);
  }
}
