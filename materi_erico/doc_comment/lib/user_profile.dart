import 'package:flutter/material.dart';

/// Class UserProfile digunakan untuk menampilkan profile user ke layar dengan indah
class UserProfile extends StatelessWidget {
  /// field ini digunakan untuk menyimpan nama user
  final String name;
  final String role;
  final String photoURL;

  /// * [name] berisi "nama user". Nilai defaultnya `No Name`.
  ///
  /// * [role] berisi peran/jabatan user. Nilai defaultnya `No Role`.
  ///
  /// * [photoURL] berisi link **foto user**. Nilai defaultnya adalah `null`.
  ///
  /// Contoh:
  ///
  /// ```
  /// final UserProfile profile = UserProfile(
  ///   name: 'nama user',
  ///   photoURL: '',
  ///   role: 'peran user',
  /// );
  /// ```
  const UserProfile(
      {Key key, this.name = 'No Name', this.role = 'No Role', this.photoURL})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: NetworkImage(
            (photoURL ??
                'https://cdn4.iconfinder.com/data/icons/web-ui-color/128/Account-512.png'),
          ),
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '[' + role + ']',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
