import 'package:flutter/material.dart';
import 'package:providers/Screen/changeColorContainer/ChangeColorModle.dart';

class ChangeClass extends ChangeNotifier {
  Color color = Colors.red;
  double wc = 1;
  double hc = 1;
  String title = '';
  BorderRadiusGeometry border = BorderRadius.circular(8);

  void changeBox(Color color, double wC, double hC, String title,
      BorderRadiusGeometry border) {
    this.color = color;
    wc = wC;
    hc = hC;
    this.title = title;
    this.border = border;

    notifyListeners();
  }
}

// class DataYou extends ChangeNotifier {
//   List<Map<String, dynamic>> you = [];

//   void personData(int age, String name, int length, int weight) {
//     you.add({
//       'age': age,
//       'name': name,
//       'length': length,
//       'weight': weight,
//     });
//     notifyListeners();
//   }
// }


class DataYou extends ChangeNotifier {
  List<ChangeColorModle> you = [];

  void personData(String name, String age, String length, String weight) {
    ChangeColorModle person = ChangeColorModle(
      name: name,
      age: age,
      length: length,
      weight: weight,
    );
    you.add(person);
    notifyListeners();
  }

}
