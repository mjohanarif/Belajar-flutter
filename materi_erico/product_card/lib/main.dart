import 'package:flutter/material.dart';
import 'package:product_card/product_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: firstColor,
          ),
          body: ChangeNotifierProvider<ProductState>(
            create: (context) => ProductState(),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Consumer<ProductState>(
                  builder: (context, productstate, child) => ProductCard(
                    imageURL:
                        'https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg',
                    name: 'Buah-bauhan Mix 1 KG',
                    price: 'RP25.000',
                    onAddCartTap: () {},
                    quantity: productstate.quantity,
                    onIncTap: () {
                      productstate.quantity++;
                    },
                    onDecTap: () {
                      productstate.quantity--;
                    },
                    notification:
                        (productstate.quantity > 5) ? "Diskon 10%" : null,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
    notifyListeners();
  }
}
