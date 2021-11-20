import 'package:flutter/material.dart';

class Buy_Now_Button extends StatelessWidget {
  const Buy_Now_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 285,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepOrange,
      ),
      child: Center(
        child: Text(
          'Buy Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
