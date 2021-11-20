import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Colors',
          style: GoogleFonts.jetBrainsMono(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 65,
        ),
        Container(
          padding: EdgeInsets.all(1),
          width: 25,
          height: 25,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1.5,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          padding: EdgeInsets.all(1),
          width: 25,
          height: 25,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1.5,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.brown.shade600,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          padding: EdgeInsets.all(1),
          width: 25,
          height: 25,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1.5,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.pink.shade200,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          padding: EdgeInsets.all(1),
          width: 25,
          height: 25,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 1.5,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.deepOrange.shade500,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
