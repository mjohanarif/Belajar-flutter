import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  String title;
  int number;
  NumberCard(this.title, this.number);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 70,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                number != null ? number.toString() : '-',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
