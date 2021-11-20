import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EmailLogInForm extends StatelessWidget {
  const EmailLogInForm({
    Key? key,
    required AuthController authController,
  })  : _authController = authController,
        super(key: key);

  final AuthController _authController;

  @override
  Widget build(BuildContext context) {
    return AppFrom(
      textEditController: _authController.userEmailInputLogin,
      hintText: 'Email Address',
      icon: Icon(
        Iconsax.sms,
        color: Colors.white,
      ),
    );
  }
}
