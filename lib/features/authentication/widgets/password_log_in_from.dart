import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PasswordLogInForm extends StatelessWidget {
  const PasswordLogInForm({
    Key? key,
    required AuthController authController,
  })  : _authController = authController,
        super(key: key);

  final AuthController _authController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AppFrom(
          obscureText: _authController.isObscureLogInPassword.value,
          textEditController: _authController.userPasswordInputLogin,
          hintText: 'Password',
          icon: GestureDetector(
            onTap: () {
              _authController.toggleisObscureLogInPassword();
            },
            child: _authController.isObscureLogInPassword.value
                ? Icon(
                    FontAwesomeIcons.eye,
                    size: 20,
                    color: Colors.white,
                  )
                : Icon(
                    FontAwesomeIcons.eyeSlash,
                    size: 20,
                    color: Colors.white,
                  ),
          ),
        ));
  }
}
