import 'package:flutter/material.dart';

const Color firstColor = Color(0xfff44336);
const Color secondColor = Color(0xff4CAF50);

class ProductCard extends StatelessWidget {
  final String imageURL;
  final String name;
  final String price;
  final int quantity;
  final String notification;
  final Function onAddCartTap;
  final Function onIncTap;
  final Function onDecTap;
  final TextStyle textStyle = TextStyle(
      fontFamily: 'Lato',
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey[800]);

  ProductCard(
      {Key key,
      this.imageURL = '',
      this.name = '',
      this.price = '',
      this.onAddCartTap,
      this.quantity = 0,
      this.onIncTap,
      this.onDecTap,
      this.notification})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(left: 10, right: 10),
          duration: Duration(milliseconds: 300),
          width: 130,
          height: (notification != null) ? 300 : 280,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    offset: Offset(1, 1),
                    color: Colors.black.withOpacity(0.3))
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: secondColor),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              (notification) ?? '',
              style: textStyle.copyWith(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 280,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(1, 1))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(imageURL), fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      price,
                      style:
                          textStyle.copyWith(fontSize: 12, color: firstColor),
                    ),
                  ),
                ],
              ),
              CustomProgressBar(
                width: 140,
                totalValue: 10,
                value: 10 - quantity,
              ),
              Column(
                children: [
                  Container(
                    width: 140,
                    height: 30,
                    decoration:
                        BoxDecoration(border: Border.all(color: firstColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: onIncTap,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(quantity.toString(), style: textStyle),
                        GestureDetector(
                          onTap: onDecTap,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.remove,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: onAddCartTap,
                    child: SizedBox(
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                        color: firstColor,
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                      width: 140,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;
  CustomProgressBar({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2, left: 6),
          child: Row(
            children: [
              Icon(Icons.add_to_queue),
              Text(value.toString() + '/' + totalValue.toString())
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Stack(
              children: [
                Container(
                  width: width,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5)),
                ),
                Material(
                  borderRadius: BorderRadius.circular(5),
                  elevation: 3,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: 10,
                    width: width * ratio,
                    decoration: BoxDecoration(
                        color: (ratio < 0.3)
                            ? firstColor
                            : (ratio < 0.6)
                                ? Colors.amber[400]
                                : Colors.lightGreen,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
