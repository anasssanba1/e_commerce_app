import 'dart:ui';
import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  final Color secondColor;
  const AppButton({
    Key? key,
    required Widget this.child,
    required Color this.color,
    required Color this.secondColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: Responsive.screenWidth(85, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
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
