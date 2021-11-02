import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/controllers/database_controller.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';

import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/loading_spinner.dart';
import 'package:e_commerce/shared/snackbars.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButton extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  final DataBaseController _db = Get.find<DataBaseController>();
  SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppButton(
        onPressed: () async {
          final isValid = _confirmUserInfo(context, _authController);
          if (isValid) {
            await _authController.signUp(context);
            
            if (_authController.isAuthenticated) {
              
              await _db.addUsertoDatabase();
              Navigator.pushNamed(context, Routes.homeView);
              _authController.setAuthPref();
            }
          }
        },
        child: _authController.isLoadingSignUp.value
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
                text: 'Sign Up',
                color: AppColors.kWhite,
                fontSize: FontSizes.middleSize,
                fontWeight: FontWeights.bold,
              ),
        color: AppColors.primaryColor,
        secondColor: AppColors.secondaryColor,
      ),
    );
  }
}

bool _confirmUserInfo(context, AuthController authController) {
  if (authController.userEmailIputSignUp.text.isEmpty) {
    SnackBars.showErrorAlert(context, 'Email address is required!');
    return false;
  }
  if (!authController.userEmailIputSignUp.text.isEmail) {
    SnackBars.showErrorAlert(context, 'pls Enter a Valid email address');
    return false;
  }
  if (authController.userPasswordIlputSignUp.text.isEmpty) {
    SnackBars.showErrorAlert(context, 'pls Enter a valid password');
    return false;
  }
  if (authController.userPasswordIlputSignUp.text.length < 6) {
    SnackBars.showErrorAlert(
        context, 'Password should be at least 6 characters');
    return false;
  }

  if (authController.userConfirmPassowordInput.text !=
      authController.userPasswordIlputSignUp.text) {
    SnackBars.showErrorAlert(
        context, 'Your password does not match the Confirmed password');

    return false;
  }

  if (authController.userNameInput.text.isEmpty) {
    SnackBars.showErrorAlert(context, 'UserName is required!');
    return false;
  }
  if (authController.userNameInput.text.length < 8) {
    SnackBars.showErrorAlert(
        context, 'UserName should be at least 8 characters !');
    return false;
  }
  return true;
}
