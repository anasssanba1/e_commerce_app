import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';

class FacebookSignInButton extends StatelessWidget {
  const FacebookSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.screenWidth(40, context),
      height: Responsive.screenHeight(6, context),
      child: AppButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: Responsive.screenWidth(5, context),
            ),
            Icon(
              Icons.facebook_outlined,
              size: 27,
              color: AppColors.kWhite,
            ),
            SizedBox(
              width: Responsive.screenWidth(2, context),
            ),
            AppText(
              text: "Facebook",
              fontSize: FontSizes.middleSize,
              color: AppColors.kWhite,
              fontWeight: FontWeights.bold,
            )
          ],
        ),
        color: AppColors.kBlue,
        secondColor: AppColors.kBlueShade,
      ),
    );
  }
}
