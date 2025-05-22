import 'package:flutter/material.dart';

class AppStyles {
  double dPadding = 16;
  TextStyle font10({Color? color, FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: 10,
    );
  }

  TextStyle font12({
    Color? color,
    FontWeight fontWeight = FontWeight.w500,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
      fontSize: 12,
    );
  }

  TextStyle font14({Color? color, FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: 14,
    );
  }

  TextStyle font16({Color? color, FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: 16,
    );
  }

  TextStyle font20({Color? color, FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: 20,
    );
  }

  TextStyle font24({Color? color, FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: 24,
    );
  }
}
