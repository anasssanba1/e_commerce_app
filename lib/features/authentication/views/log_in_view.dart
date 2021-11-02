import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/widgets/Log_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/email_log_in_form.dart';
import 'package:e_commerce/features/authentication/widgets/facebook_sign_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/google_sign_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/password_log_in_from.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInView extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        EmailLogInForm(authController: _authController),
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        PasswordLogInForm(authController: _authController),
        SizedBox(
          height: Responsive.screenHeight(3.5, context),
        ),
        LogInButton(authController: _authController),
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        const Divider(
          color: Colors.white,
          indent: 50,
          thickness: 1.5,
          endIndent: 50,
        ),
        SizedBox(
          height: Responsive.screenHeight(3.5, context),
        ),
        AppText(
            text: 'Or Continue with',
            fontSize: FontSizes.smallSize,
            color: AppColors.kWhite),
        SizedBox(
          height: Responsive.screenHeight(3.5, context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleSignInButton(),
            SizedBox(
              width: Responsive.screenWidth(10, context),
            ),
            const FacebookSignInButton(),
          ],
        )
      ],
    );
  }
}
