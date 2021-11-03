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
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _authController.getAuthPref(context);
    });
    _image = Image.asset(Imagespath.background).image;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: _image,
          ),
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
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
