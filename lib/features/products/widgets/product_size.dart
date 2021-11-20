import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Size',
          style: GoogleFonts.jetBrainsMono(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 80,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            border: Border.all(
              color: Colors.grey.shade800,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              'S',
              style: GoogleFonts.jetBrainsMono(
                letterSpacing: 1.0,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 35,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            border: Border.all(
              color: Colors.white54,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              'M',
              style: GoogleFonts.jetBrainsMono(
                letterSpacing: 1.0,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 35,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            border: Border.all(
              color: Colors.grey.shade800,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              'L',
              style: GoogleFonts.jetBrainsMono(
                letterSpacing: 1.0,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Size',
              style: TextStyle(
                color: Colors.deepOrange,
                letterSpacing: 1,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'Guide',
              style: TextStyle(
                color: Colors.deepOrange,
                letterSpacing: 1,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        )
      ],
    );
  }
}
