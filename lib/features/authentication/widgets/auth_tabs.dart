import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/material.dart';

class AuthTabs extends StatelessWidget {
  const AuthTabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3.0,
          color: AppColors.kWhite,
        ),
        insets: EdgeInsets.symmetric(horizontal: 20),
      ),
      tabs: [
        Tab(
          child: AppText(
            text: 'Sign Up',
            fontSize: FontSizes.middleSize,
            color: AppColors.kWhite,
          ),
        ),
        Tab(
          child: AppText(
            text: 'Log In',
            fontSize: FontSizes.middleSize,
            color: AppColors.kWhite,
          ),
        ),
      ],
    );
  }
}
