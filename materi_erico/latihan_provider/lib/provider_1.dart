import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:latihan_provider/application_color.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (BuildContext context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<ApplicationColor>(
            builder: (context, applicationColor, _) => Text(
              'Provider State Management',
              style: TextStyle(color: applicationColor.color),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, child) =>
                    AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  color: applicationColor.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('AB'),
                    margin: EdgeInsets.all(5),
                  ),
                  Consumer<ApplicationColor>(
                      builder: (context, applicationColor, child) => Switch(
                          value: applicationColor.isLightBlue,
                          onChanged: (newValue) {
                            applicationColor.isLightBlue = newValue;
                          })),
                  Container(
                    child: Text('LB'),
                    margin: EdgeInsets.all(5),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
