import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IncrementClass extends ChangeNotifier {
  int number = 1;

  void increment() {
    number++;
    notifyListeners();
  }
}

class BoxColor extends ChangeNotifier {
  Color color = Colors.blue;

  void changeColor(Color color) {
    this.color = color;
    notifyListeners();
  }
}

class ListName extends ChangeNotifier {
  List<String> namesList = [];

  void addNames(String name) {
    namesList.add(name);
    notifyListeners();
  }
}
