import 'package:flutter/material.dart';

class Favorite_Floating_Button extends StatelessWidget {
  const Favorite_Floating_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      child: Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 29,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.deepOrange.shade500,
      ),
    );
  }
}
