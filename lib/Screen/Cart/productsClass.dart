import 'package:providers/Screen/Cart/productModle.dart';
import 'package:flutter/material.dart';

class productsClass extends ChangeNotifier {
  List<productModle> productsList = [];
  List productsCart = [];

  void addProducts(String name, String price, String description, bool isAdd) {
    final product = productModle(
        name: name, price: price, description: description, isAdd: isAdd);
    productsList.add(product);

    notifyListeners();
  }
}
