import 'msg_chat.dart';
import 'package:flutter/material.dart';
import '/theme.dart';

class MessagePage extends StatelessWidget {
  final String name;
  final String imageUrl;
  const MessagePage({required this.name, required this.imageUrl, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Text Message...'),
            Container(
              child: Icon(Icons.arrow_right),
              decoration: BoxDecoration(
                color: lightGreyColor,
                borderRadius: BorderRadius.circular(50),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(35),
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(imageUrl, width: 55, height: 55),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: titleTextStyle),
                      Text('14.082 Members', style: subtitleTextStyle),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.call_rounded,
                    color: greenColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0).copyWith(left: 20),
              child: Row(
                children: [
                  Column(
                    children: const [
                      msgChat(
                        picUrl: 'assets/images/pic2.png',
                        chat: 'How are you guys?',
                        time: '09:08',
                        isSend: false,
                      ),
                      msgChat(
                        picUrl: 'assets/images/pic.png',
                        chat: 'How are you guys?',
                        time: '09:08',
                        isSend: true,
                      ),
                      msgChat(
                        picUrl: 'assets/images/pic2.png',
                        chat: 'How are you guys?',
                        time: '09:08',
                        isSend: false,
                      ),
                      msgChat(
                        picUrl: 'assets/images/pic.png',
                        chat: 'How are you guys?',
                        time: '09:08',
                        isSend: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
