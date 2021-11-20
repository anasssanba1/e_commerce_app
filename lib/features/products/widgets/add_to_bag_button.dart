import 'package:flutter/material.dart';

class Add_To_Bag_Button extends StatelessWidget {
  const Add_To_Bag_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade700,
          width: 1,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
          size: 23,
        ),
      ),
    );
  }
}
