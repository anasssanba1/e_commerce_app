import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFrom(
      textEditController: TextEditingController(),
      hintText: 'Email Address',
      icon: Icons.email,
    );
  }
}
