import 'package:e_commerce/features/authentication/views/home_page.dart';
import 'package:e_commerce/features/authentication/views/sign_up_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Routes {
  static const String signUpPage = '/';
  static const String homePage = '/homepage';
  static routes(BuildContext context) {
    return {
      signUpPage: (context) => SignUpPage(),
      homePage: (context) => HomePage(),
    };
  }
}
