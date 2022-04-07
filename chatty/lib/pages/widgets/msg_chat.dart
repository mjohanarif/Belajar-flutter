import 'package:flutter/material.dart';

import '/theme.dart';

class msgChat extends StatelessWidget {
  final String picUrl;
  final String chat;
  final String time;
  final bool isSend;
  // const msgChat({ Key? key }) : super(key: key);
//
  const msgChat({
    Key? key,
    required this.picUrl,
    required this.chat,
    required this.time,
    required this.isSend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          isSend
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.all(Radius.circular(10)).copyWith(
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(chat,
                              style: titleTextStyle.copyWith(fontSize: 18)),
                          Text(time,
                              style: subtitleTextStyle.copyWith(fontSize: 14)),
                        ],
                      ),
                    ),
                    Image.asset(
                      picUrl,
                      width: 55,
                      height: 55,
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      picUrl,
                      width: 55,
                      height: 55,
                    ),
                    //Text(chat, style: titleTextStyle.copyWith(fontSize: 18)),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius:
                            BorderRadius.all(Radius.circular(10)).copyWith(
                          bottomLeft: Radius.zero,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(chat,
                              style: titleTextStyle.copyWith(fontSize: 18)),
                          Text(time,
                              style: subtitleTextStyle.copyWith(fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
