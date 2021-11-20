import 'dart:ui';

import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/controllers/database_controller.dart';
import 'package:e_commerce/features/authentication/views/log_in_view.dart';
import 'package:e_commerce/features/authentication/views/sign_up_view.dart';
import 'package:e_commerce/features/authentication/widgets/app_logo.dart';
import 'package:e_commerce/features/authentication/widgets/auth_tabs.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthView extends StatefulWidget {
  AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final AuthController _authController = Get.find<AuthController>();
  final DataBaseController _db = Get.find<DataBaseController>();

  late final ImageProvider _image;
  @override
  void initState() {
    super.initState();
    _image = Image.network(
            'https://wallpaperforu.com/wp-content/uploads/2020/08/neon-wallpaper-2008181520496360x640.jpg')
        .image;
    /*  SchedulerBinding.instance!.addPostFrameCallback((_) {
      _authController.getAuthPref(context);
    }); */
  }

//https://i.pinimg.com/originals/b1/de/c4/b1dec4f7e6848c3ef296ff0e6db2209e.jpg
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: _image,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.black.withOpacity(0.0),
                    ),
                  ),
                ),
                deafault(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

DefaultTabController deafault(context) {
  return DefaultTabController(
    length: 2,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: Responsive.screenHeight(8, context),
        ),
        AppLogo(),
        SizedBox(
          height: Responsive.screenHeight(4, context),
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
  );
}
