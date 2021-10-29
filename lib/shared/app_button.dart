import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;

  final Color color;

  final Color secondColor;
  const AppButton({
    Key? key,
    required Widget this.child,
    required Color this.color,
    required Color this.secondColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: Responsive.screenWidth(85, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color, secondColor],
          ),
        ),
        height: Responsive.screenHeight(6.3, context),
        child: Center(child: child),
      ),
    );
  }
}
