import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton(
      child: AppText(
        text: 'SignUp',
        color: AppColors.kWhite,
        fontSize: FontSizes.middleSize,
        fontWeight: FontWeights.bold,
      ),
      color: AppColors.kAmber,
      secondColor: AppColors.kAmberShade,
    );
  }
}
