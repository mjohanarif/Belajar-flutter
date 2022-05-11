import 'package:flutter/material.dart';

import 'post_result_model.dart';

class PostPage extends StatefulWidget {
  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  PostResult postResult = null;
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
              Text(postResult != null
                  ? postResult.id +
                      ' | ' +
                      postResult.name +
                      ' | ' +
                      postResult.job +
                      ' | ' +
                      postResult.created
                  : 'Tidak ada data'),
              ElevatedButton(
                onPressed: () {
                  PostResult.connectToApi('Bidu', 'Dosen')
                      .then((value) => postResult = value);
                  setState(() {});
                },
                child: Text('POST'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
