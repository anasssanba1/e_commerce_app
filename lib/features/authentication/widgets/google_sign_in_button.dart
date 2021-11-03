import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/controllers/database_controller.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/loading_spinner.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GoogleSignInButton extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  final DataBaseController _db = Get.find<DataBaseController>();

  GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Obx(
          () => AppButton(
            onPressed: () async {
              await _authController.googleLogin(context);
              print(_authController.isAuthenticated);
              if (_authController.isAuthenticated) {
                _authController.setAuthPref();
                _db.addUserGoogleinfo();
                Navigator.pushNamedAndRemoveUntil(

                context, Routes.homeView, (Route<dynamic> route) => false);
              }
            },
            child: _authController.isLoadingGoogleSignIn.value
                ? SizedBox(
                    height: 25,
                    width: 25,
                    child: LoadingSpinner(
                      color: AppColors.primaryColor,
                    ),
                  )
                : Image.asset(
                    Imagespath.googleIcon,
                  ),
            color: Colors.transparent,
            secondColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
