import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/views/log_in_view.dart';
import 'package:e_commerce/features/authentication/views/sign_up_view.dart';
import 'package:e_commerce/features/authentication/widgets/app_logo.dart';
import 'package:e_commerce/features/authentication/widgets/auth_tabs.dart';
import 'package:e_commerce/routes/routes.dart';

import 'package:e_commerce/services/firebase/auth_service.dart';

import 'package:e_commerce/utils/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthView extends StatefulWidget {
  final AuthController authController;
  AuthView({Key? key})
      : authController = Get.put(
          AuthController(
            AuthService(),
          ),
        ),
        super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
          Navigator.pushNamed(context, Routes.homeView);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(Imagespath.background).image,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Responsive.screenHeight(10, context),
                ),
                const AppLogo(),
                SizedBox(
                  height: Responsive.screenHeight(5, context),
                ),
                const AuthTabs(),
                SizedBox(
                  height: Responsive.screenHeight(53, context),
                  child: TabBarView(
                    children: [
                      SignUpView(),
                      LogInView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
