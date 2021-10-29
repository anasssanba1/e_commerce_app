import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Responsive.screenWidth(10, context),
          ),
          Icon(
            FontAwesomeIcons.google,
            size: 24,
            color: AppColors.kWhite,
          ),
          SizedBox(
            width: Responsive.screenWidth(3, context),
          ),
          AppText(
            text: "Sign In with Google",
            fontSize: FontSizes.middleSize,
            color: AppColors.kWhite,
            fontWeight: FontWeights.bold,
          )
        ],
      ),
      color: AppColors.kPink,
      secondColor: AppColors.kPinkShade,
    );
  }
}
