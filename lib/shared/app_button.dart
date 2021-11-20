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
        width: Responsive.screenWidth(84.5, context),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.pink.withAlpha(60),
              blurRadius: 6.0,
              spreadRadius: 0.0,
              offset: Offset(
                0.0,
                3.0,
              ),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color,
              secondColor,
            ],
          ),
        ),
        height: Responsive.screenHeight(5.8, context),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
