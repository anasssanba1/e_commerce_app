import 'package:flutter/material.dart';

class Responsive {
  static double screenHeight(double p, BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height * (p / 100);
    return screenHeight;
  }

  static double screenWidth(double p, BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width * (p / 100);
    return screenWidth;
  }
}
