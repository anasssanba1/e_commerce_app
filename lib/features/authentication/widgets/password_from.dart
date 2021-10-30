import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordForm extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  PasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFrom(
      textEditController: _authController.userPasswordlput,
      hintText: 'Password',
      icon: Icons.remove_red_eye_rounded,
    );
  }
}
