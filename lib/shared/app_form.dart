import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFrom extends StatelessWidget {
  final TextEditingController textEditController;
  final String hintText;
  final Widget? icon;
  bool obscureText;
  AppFrom({
    Key? key,
    required TextEditingController this.textEditController,
    required String this.hintText,
    this.obscureText = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.screenWidth(85, context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.1),
          elevation: 30,
          shadowColor: Colors.red,
          child: TextFormField(
            obscureText: obscureText,
            style: GoogleFonts.jetBrainsMono(
              color:  Colors.white,
              fontSize: FontSizes.middleSize,
            ),
            cursorColor: AppColors.kWhite,
            controller: textEditController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.jetBrainsMono(
                color: Colors.white,
                fontSize: FontSizes.middleSize,
              ),
              fillColor: Colors.pink.withOpacity(0.35),
              suffixIcon: icon,
              filled: true,
            ),
          ),
        ),
      ),
    );
  }
}
