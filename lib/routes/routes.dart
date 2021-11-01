import 'package:e_commerce/features/authentication/views/auth_view.dart';
import 'package:e_commerce/features/authentication/views/home_view.dart';
import 'package:e_commerce/features/authentication/views/sign_up_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Routes {
  static const String authView = '/sign_up_view';
  static const String homeView = '/homeview';
  static routes(BuildContext context) {
    return {
      authView: (context) => AuthView(),
      homeView: (context) => HomeView(),
    };
  }
}
