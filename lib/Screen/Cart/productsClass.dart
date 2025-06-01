import 'package:flutter/cupertino.dart';
import 'package:providers/Screen/Cart/productModle.dart';
import 'package:flutter/material.dart';

class productsClass extends ChangeNotifier {
  List<productModle> productsList = [];

  addProducts(String name, String price, String description) {
    final product = productModle(
      name: name,
      price: price,
      description: description,
    );
    productsList.add(product);

    notifyListeners();
  }
}
