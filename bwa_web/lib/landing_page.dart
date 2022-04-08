import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/landingpage.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem('Guides', 0),
                        SizedBox(
                          width: 50,
                        ),
                        navItem('Pricing', 1),
                        SizedBox(
                          width: 50,
                        ),
                        navItem('Team', 2),
                        SizedBox(
                          width: 50,
                        ),
                        navItem('Stories', 3),
                      ],
                    ),
                    Image.asset(
                      'btn.png',
                      width: 153,
                      height: 83,
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/webimage.png',
                  width: 550,
                ),
                const SizedBox(
                  height: 65,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icon_down_solid.png', width: 24),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget navItem(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: const Color(0xff1d1e3c),
                fontWeight:
                    selectedIndex == index ? FontWeight.w500 : FontWeight.w300),
          ),
          Container(
            width: 66,
            height: 2,
            decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Color(0xfffe9980)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}
