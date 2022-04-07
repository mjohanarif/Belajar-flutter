import 'package:flutter/material.dart';
import '/theme.dart';
import 'msg.dart';

class ChatTile extends StatelessWidget {
  // const ChatTile({ Key? key }) : super(key: key);
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;
  const ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MessagePage(name: name, imageUrl: imageUrl);
          }));
          //Navigator.of(context).pushNamed(SignUpPage_6.routeName);
          print("U see message from");
          print(this.name);
        },
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: titleTextStyle),
                SizedBox(
                  width: 150,
                  child: Text(
                    text,
                    style: unread
                        ? subtitleTextStyle.copyWith(
                            color: blackColor,
                          )
                        : subtitleTextStyle,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(time, style: subtitleTextStyle),
            //onPressed()
          ],
        ),
      ),
    );
  }
}
