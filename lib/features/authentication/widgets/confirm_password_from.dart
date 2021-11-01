import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmPasswordForm extends StatelessWidget {
  final _authController = Get.find<AuthController>();
  ConfirmPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => AppFrom(
          textEditController: _authController.userConfirmPassowordInput,
          hintText: 'Confirm Password',
          obscureText: _authController.isObscureSignUpConfirmPassword.value,
          icon: GestureDetector(
            onTap: () {
              _authController.toggleisObscureSignUpConfirmPassword();
            },
            child: _authController.isObscureSignUpConfirmPassword.value
                ? Icon(FontAwesomeIcons.eye, size: 20)
                : Icon(FontAwesomeIcons.eyeSlash, size: 20),
          ),
        ));
  }
}
