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
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: Responsive.screenWidth(85, context),
        child: TextFormField(

          obscureText: obscureText,
          style: GoogleFonts.aBeeZee(
            color: AppColors.kBlack,
            fontSize: FontSizes.middleSize,
          ),
          cursorColor: AppColors.kBlack,
          controller: textEditController,
          decoration: InputDecoration(
            
            hintText: hintText,
            hintStyle: GoogleFonts.aBeeZee(
                color: AppColors.ktextHintColor,
                fontSize: FontSizes.middleSize),
            fillColor: AppColors.kWhite,
            suffixIcon: icon,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
