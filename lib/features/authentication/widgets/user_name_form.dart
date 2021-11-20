import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';

class UserNameForm extends StatelessWidget {
  final _authController = Get.find<AuthController>();
  UserNameForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppFrom(
      textEditController: _authController.userNameInput,
      hintText: 'UserName',
      icon: Icon(
        Iconsax.user,
        color: Colors.white,
      ),
    );
  }
}
