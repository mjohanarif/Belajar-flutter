import 'package:bwa_state/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentApp());
}

class PaymentApp extends StatefulWidget {
  const PaymentApp({Key? key}) : super(key: key);

  @override
  State<PaymentApp> createState() => _PaymentAppState();
}

class _PaymentAppState extends State<PaymentApp> {
  int selectedIndex = -1;
  Widget option(int index, String title, String subtitle, String pricing) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? const Color(0xff007dff)
                    : const Color(0xff4d5b7c)),
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                selectedIndex == index
                    ? const Icon(
                        Icons.radio_button_checked,
                        color: Color(0xff007dff),
                      )
                    : const Icon(
                        Icons.radio_button_off,
                        color: Color(0xff4d5b7c),
                      ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: planTextStyle,
                    ),
                    Text(
                      subtitle,
                      style: descTextStyle,
                    ),
                  ],
                ),
                Text(
                  pricing,
                  style: descTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Column(
      children: [
        Image.asset(
          'assets/goal.png',
          width: 267,
          height: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Upgrade to',
              style: titleTextStyle,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              'Pro',
              style: titleProTextStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Go unlock all features and \nbuild your own business bigger',
          style: subtitleTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget checkoutButton() {
    return Column(
      children: [
        SizedBox(
          width: 311,
          height: 51.23,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff007dff),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(71))),
            child: Text(
              'Checkout Now',
              style: buttonTextStyle,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xff04112f),
        body: ListView(
          children: [
            header(),
            option(0, 'Monthyly', 'Good for starting up', '\$20'),
            option(1, 'Quarterly', 'Focusing on Building', '\$55'),
            option(2, 'Yearly', 'Steady company', '\$220'),
            const SizedBox(
              height: 30,
            ),
            selectedIndex == -1 ? const SizedBox() : checkoutButton(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
