import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

import 'widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/images/btn.png',
          fit: BoxFit.fill,
        ),
        iconSize: 55,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/pic.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Sabrina Carpenter'),
                  Text(
                    'Home page',
                    style: TextStyle(
                      fontSize: 28,
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(
                      fontSize: 16,
                      color: lightBlueColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ChatTile(
                        imageUrl: 'assets/images/pic2.png',
                        name: 'Rosa',
                        text: 'Rosas text',
                        time: '03:45',
                        unread: false),
                    const ChatTile(
                        imageUrl: 'assets/images/pic.png',
                        name: 'Rina',
                        text: 'Nice to know!',
                        time: '07:45',
                        unread: true),
                    const SizedBox(
                      height: 30,
                    ),
                    Text('Groups', style: titleTextStyle),
                    const ChatTile(
                        imageUrl: 'assets/images/icon (2).png',
                        name: 'Jakarta Fair',
                        text: 'this is the conference day!',
                        time: 'now',
                        unread: false),
                    const ChatTile(
                        imageUrl: 'assets/images/icon (1).png',
                        name: 'Angga',
                        text: 'oi answer the group, will ya',
                        time: '08:00',
                        unread: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
