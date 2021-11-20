import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PasswordForm extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  PasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppFrom(
        textEditController: _authController.userPasswordIlputSignUp,
        hintText: 'Password',
        obscureText: _authController.isObscureSignUpPassword.value,
        icon: GestureDetector(
          onTap: () {
            _authController.toggleisObscureSignUpPassword();
          },
          child: _authController.isObscureSignUpPassword.value
              ? Icon(FontAwesomeIcons.eye, size: 20 ,color: Colors.white,)
              : Icon(FontAwesomeIcons.eyeSlash, size: 20,
                  color: Colors.white,
                ),
        ),
      ),
    );
  }
}
