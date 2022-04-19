import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        children: [
          Positioned(
            right: getSmallDiameter(context) * -0.3,
            top: getSmallDiameter(context) * -0.3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffb226b2),
                    Color(0xffff6da7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: getBigDiameter(context) * -0.25,
            top: getBigDiameter(context) * -0.25,
            child: Container(
              child: Center(
                child: Text('dribblee',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 30,
                        color: Colors.white)),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffb226b2),
                    Color(0xffff4891),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            right: getSmallDiameter(context) * -0.7,
            bottom: getSmallDiameter(context) * -0.7,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xfff3e9ee)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xffff4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffff4891))),
                          labelText: "Email: ",
                          labelStyle: TextStyle(color: Color(0xffff4891)),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xffff4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffff4891))),
                          labelText: "Password: ",
                          labelStyle: TextStyle(color: Color(0xffff4891)),
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        0,
                        20,
                        20,
                      ),
                      child: Text(
                        'FORGOT PASSWORD',
                        style:
                            TextStyle(color: Color(0xffff4891), fontSize: 12),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: Center(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.amber,
                                onTap: () {},
                                child: Text('SIGN IN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffb226b2),
                                    Color(0xffff4891),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.transparent,
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Icon(
                          Icons.facebook,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.transparent,
                        mini: true,
                        elevation: 0,
                        onPressed: () {},
                        child: Icon(
                          Icons.whatshot_sharp,
                          color: Colors.red,
                          size: 50,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Color(0xffff4891),
                          fontSize: 11,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
