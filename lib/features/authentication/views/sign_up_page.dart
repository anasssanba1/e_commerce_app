import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/views/log_in_page.dart';
import 'package:e_commerce/features/authentication/widgets/app_logo.dart';
import 'package:e_commerce/features/authentication/widgets/email_from.dart';
import 'package:e_commerce/features/authentication/widgets/password_from.dart';
import 'package:e_commerce/features/authentication/widgets/sign_up_button.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:e_commerce/shared/app_form.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController(
    AuthService(),
  ));
  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Responsive.screenHeight(7, context),
              ),
              //const AppLogo(),
              SizedBox(
                height: Responsive.screenHeight(2.5, context),
              ),
              SizedBox(
                height: Responsive.screenHeight(1, context),
              ),
              const AppLogo(),
              SizedBox(
                height: Responsive.screenHeight(5, context),
              ),
              Container(
                height: Responsive.screenHeight(8, context),
                child: Theme(
                  data: ThemeData(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  child: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.primaryColor,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    tabs: [
                      Tab(
                        child: AppText(
                          text: 'Sign Up',
                          fontSize: FontSizes.middleSize,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Tab(
                        child: AppText(
                          text: 'Log In',
                          fontSize: FontSizes.middleSize,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16),
                color: AppColors.kWhite,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: Responsive.screenHeight(53, context),
                    child: TabBarView(
                      children: [
                        Column(
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
                            AppFrom(
                              textEditController: TextEditingController(),
                              hintText: 'Confirm Password',
                            ),
                            SizedBox(
                              height: Responsive.screenHeight(2, context),
                            ),
                            AppFrom(
                              textEditController: TextEditingController(),
                              hintText: 'UserName',
                              icon: Icons.person,
                            ),
                            SizedBox(
                              height: Responsive.screenHeight(3.5, context),
                            ),
                            SignUpButton(),
                            
                          ],
                        ),
                        LogInPage(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
