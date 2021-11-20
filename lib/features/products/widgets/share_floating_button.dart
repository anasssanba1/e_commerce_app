import 'package:flutter/material.dart';

class Share_Floating_Button extends StatelessWidget {
  const Share_Floating_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.050,
      child: Container(
        height: 55,
        width: 55,
        child: Center(
          child: Icon(
            Icons.share_outlined,
            color: Colors.deepOrange.shade300,
            size: 28,
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
      ),
    );
  }
}
