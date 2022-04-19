import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Card Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff8c062f),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xfffe5788),
                  Color(0xfff56d5d),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v880-kul-09-a.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=b4e741b8f8801bce6da68b7f2c77e883',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20,
                            50 + MediaQuery.of(context).size.height * 0.35,
                            20,
                            20),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'Beautiful SUnset at Paddy Field',
                                style: TextStyle(
                                    color: Color(0xfff56d5d), fontSize: 25),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 20, 0, 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Posted on ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Text(
                                      'June 18,2019',
                                      style: TextStyle(
                                          color: Color(0xfff56d5d),
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Spacer(
                                    flex: 10,
                                  ),
                                  Icon(
                                    Icons.thumb_up,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    '99',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(
                                    flex: 5,
                                  ),
                                  Icon(
                                    Icons.comment,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    '868',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(
                                    flex: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
