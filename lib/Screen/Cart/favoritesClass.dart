import 'package:flutter/material.dart';
import 'package:providers/Screen/Cart/productModle.dart';

class favoritesClass extends ChangeNotifier {
  List<productModle> favoritesList = [];

  void addfavorites(productModle product) {
    if (favoritesList.contains(product)) {
      favoritesList.remove(product);
    } else {
      favoritesList.add(product);
    }
    notifyListeners();
  }

  bool isInfavorites(productModle product) {
    return favoritesList.contains(product);
  }
}
