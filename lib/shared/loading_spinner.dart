import 'package:flutter/material.dart';

class LoadingSpinner extends StatelessWidget {
  final Color color;
  const LoadingSpinner({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color,
      strokeWidth: 3,
    );
  }
}
