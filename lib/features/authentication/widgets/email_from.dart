import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailForm extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return AppFrom(
      textEditController: _authController.userEmailput,
      hintText: 'Email Address',
      icon: Icons.email,
    );
  }
}
