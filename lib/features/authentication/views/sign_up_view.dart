import 'package:e_commerce/features/authentication/views/auth_view.dart';
import 'package:e_commerce/features/authentication/widgets/confirm_password_from.dart';
import 'package:e_commerce/features/authentication/widgets/email_from.dart';
import 'package:e_commerce/features/authentication/widgets/password_from.dart';
import 'package:e_commerce/features/authentication/widgets/sign_up_button.dart';
import 'package:e_commerce/features/authentication/widgets/user_name_form.dart';
import 'package:e_commerce/shared/app_text.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 22,
            ),
            Checkbox(
              value: true,
              onChanged: (val) {},
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
              child: AppText(
                text: 'keep me Signed In',
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
        SizedBox(
          height: Responsive.screenHeight(1, context),
        ),
        SignUpButton(),
      ],
    );
  }
}
