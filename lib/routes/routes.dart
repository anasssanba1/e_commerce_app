import 'package:e_commerce/features/authentication/views/auth_view.dart';
import 'package:e_commerce/features/products/views/home_view.dart';
import 'package:e_commerce/features/authentication/views/settings_view.dart';
import 'package:e_commerce/features/authentication/views/sign_up_view.dart';
import 'package:e_commerce/features/products/views/product_details_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Routes {
  static const String authView = '/sign_up_view';
  static const String homeView = '/home_view';
  static const String settingsView = '/settings_view';
  static const String productDetailsView = '/product_details_view';
  static routes(BuildContext context) {
    return {
      authView: (context) => AuthView(),
      homeView: (context) => HomeView(),
      settingsView: (context) => SettingsView(),
      productDetailsView: (context) => ProductDetailsView(),
    };
  }
}
