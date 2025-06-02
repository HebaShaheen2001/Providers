import 'package:flutter/material.dart';
import 'package:providers/Screen/Cart/productModle.dart';

class CartClass extends ChangeNotifier {
  List<productModle> cartList = [];

  void addCart(productModle product) {
    if (cartList.contains(product)) {
      cartList.remove(product);
    } else {
      cartList.add(product);
    }
    notifyListeners();
  }

  bool isInCart(productModle product) {
    return cartList.contains(product);
  }
}
