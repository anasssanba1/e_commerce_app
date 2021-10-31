import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const AppText({
    required String this.text,
    required double this.fontSize,
    required Color this.color,
    FontWeight this.fontWeight = FontWeight.normal,
    TextAlign this.textAlign = TextAlign.start,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.aBeeZee(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 1,
      ),
    );
  }
}
