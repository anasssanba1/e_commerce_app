import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';

import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/loading_spinner.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButton extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppButton(
        onPressed: () async {
          await _authController.signUp();
          if (_authController.isAuthenticated) {
            Navigator.pushNamed(context, Routes.homePage);
          } else {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: AppText(
                    text: 'Error',
                    fontSize: FontSizes.bigTitle,
                    color: AppColors.kBlack),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: AppText(
                      text: 'OK',
                      fontSize: FontSizes.middleSize,
                      color: AppColors.kAmber,
                    ),
                  )
                ],
              ),
            );
          }
        },
        child: _authController.isloading.value
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
                text: 'SignUp',
                color: AppColors.kWhite,
                fontSize: FontSizes.middleSize,
                fontWeight: FontWeights.bold,
              ),
        color: AppColors.kAmber,
        secondColor: AppColors.kAmberShade,
      ),
    );
  }
}
