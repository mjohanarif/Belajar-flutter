import 'package:belajar_bloc/color_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              },
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_lightblue);
              },
            ),
          ],
        ),
        appBar: AppBar(
          title: Text('Bloc tanpa library'),
        ),
        body: Center(
            child: StreamBuilder<Color>(
                initialData: Colors.amber,
                stream: bloc.statusStream,
                builder: (context, snapshot) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: 100,
                    width: 100,
                    color: snapshot.data,
                  );
                })),
      ),
    );
  }
}
