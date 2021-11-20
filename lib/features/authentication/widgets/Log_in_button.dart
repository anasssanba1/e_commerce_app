import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/loading_spinner.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key? key,
    required AuthController authController,
  })  : _authController = authController,
        super(key: key);

  final AuthController _authController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppButton(
        onPressed: () async {
          await _authController.signIn(context);

          if (_authController.isAuthenticated) {
            _authController.setAuthPref();
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.homeView, (Route<dynamic> route) => false);
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
              ),
        color: Colors.pink.withOpacity(0.6),
        secondColor: Colors.pink.withOpacity(0.7),
      ),
    );
  }
}
