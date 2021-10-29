import 'package:e_commerce/features/authentication/views/sign_up_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Routes {
  static const String signUpPage = '/signup';
  static const String logInPage = '/login';
  static Route<dynamic>? controller(final RouteSettings settings) {
    switch (settings.name) {
      case signUpPage:
        return MaterialPageRoute(builder: (context) => SignUpPage());
      case logInPage:
        return MaterialPageRoute(builder: (context) => LogInPage());
    }
  }
}

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
