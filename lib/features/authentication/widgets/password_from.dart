import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';

class PasswordForm extends StatelessWidget {
  const PasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFrom(
      textEditController: TextEditingController(),
      hintText: 'Password',
      icon: Icons.remove_red_eye_rounded,
    );
  }
}
