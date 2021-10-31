import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/widgets/facebook_sign_in_button.dart';
import 'package:e_commerce/features/authentication/widgets/google_sign_in_button.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/loading_spinner.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInPage extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        AppFrom(
          textEditController: _authController.userEmailInputLogin,
          hintText: 'Email Address',
          icon: Icons.email,
        ),
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        AppFrom(
          textEditController: _authController.userPasswordInputLogin,
          hintText: 'Password',
          icon: Icons.remove_red_eye_outlined,
        ),
        SizedBox(
          height: Responsive.screenHeight(3.5, context),
        ),
        Obx(
          () => AppButton(
            onPressed: () async {
              await _authController.signIn(context);
              if (_authController.isAuthenticated) {
                Navigator.pushNamed(context, Routes.homePage);
              }
            },
            child: _authController.isLoadingSignIn.value
                ? Center(
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: LoadingSpinner(
                        color: Colors.white,
                      ),
                    ),
                  )
                : AppText(
                    text: 'Log In',
                    color: AppColors.kWhite,
                    fontSize: FontSizes.middleSize,
                    fontWeight: FontWeights.bold,
                  ),
            color: AppColors.primaryColor,
            secondColor: AppColors.secondaryColor,
          ),
        ),
        SizedBox(
          height: Responsive.screenHeight(3.5, context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const GoogleSignInButton(),
            SizedBox(
              width: Responsive.screenWidth(3, context),
            ),
            const FacebookSignInButton(),
          ],
        )
      ],
    );
  }
}
