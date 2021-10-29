import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/widgets/app_logo.dart';
import 'package:e_commerce/features/authentication/widgets/email_from.dart';
import 'package:e_commerce/features/authentication/widgets/facebook_sign_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/google_sign_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/password_from.dart';
import 'package:e_commerce/features/authentication/widgets/sign_in_app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Responsive.screenHeight(10, context),
            ),
            const AppLogo(),
            SizedBox(
              height: Responsive.screenHeight(2.5, context),
            ),
            Container(
              alignment: Alignment.center,
              child: AppText(
                text: 'Infinite Energy',
                color: AppColors.kBlack,
                fontSize: FontSizes.bigTitle,
                fontWeight: FontWeights.extraBold,
              ),
            ),
            SizedBox(
              height: Responsive.screenHeight(5, context),
            ),
            const EmailForm(),
            SizedBox(
              height: Responsive.screenHeight(3, context),
            ),
            const PasswordForm(),
            SizedBox(
              height: Responsive.screenHeight(5, context),
            ),
            const SignUpButton(),
            SizedBox(
              height: Responsive.screenHeight(10, context),
            ),
            const FacebookSignInButton(),
            SizedBox(
              height: Responsive.screenHeight(1.5, context),
            ),
            const GoogleSignInButton(),
          ],
        ),
      ),
    );
  }
}
