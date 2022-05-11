import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient Opacity'),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [Colors.black, Colors.transparent],
              ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: 300,
              image: NetworkImage(
                  "https://images.fineartamerica.com/images-medium-large-5/seoul-palace-sunset-aaron-s-bedell.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
