import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Text(
        'A lightweight woven blazer featuring notched lapels,an open font,3/4 sleeves',
        style: GoogleFonts.jetBrainsMono(
          letterSpacing: 1,
          color: Colors.grey.shade500,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
