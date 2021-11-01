import 'package:e_commerce/features/authentication/views/auth_view.dart';
import 'package:e_commerce/features/authentication/widgets/confirm_password_from.dart';
import 'package:e_commerce/features/authentication/widgets/email_from.dart';
import 'package:e_commerce/features/authentication/widgets/password_from.dart';
import 'package:e_commerce/features/authentication/widgets/sign_up_button.dart';
import 'package:e_commerce/features/authentication/widgets/user_name_form.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        EmailForm(),
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        PasswordForm(),
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        ConfirmPasswordForm(),
        SizedBox(
          height: Responsive.screenHeight(2, context),
        ),
        UserNameForm(),
        SizedBox(
          height: Responsive.screenHeight(3.5, context),
        ),
        SignUpButton(),
      ],
    );
  }
}
