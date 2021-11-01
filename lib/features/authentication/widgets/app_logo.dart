import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Imagespath.logo,
      height: Responsive.screenHeight(25, context),
      width: Responsive.screenWidth(100, context),
      color: AppColors.kWhite,
      fit: BoxFit.cover,
    );
  }
}
