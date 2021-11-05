import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/products/views/watches_view.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: AppText(
            text: 'Products',
            fontSize: FontSizes.middleSize,
            color: AppColors.kWhite,
          ),
          actions: [
            Icon(Icons.search),
            Icon(Icons.shopping_cart_sharp),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'watches',
              ),
              Tab(
                text: 'Perfumes',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            WatchesView(),
            Scaffold(),
          ],
        ),
      ),
    );
  }

  void signOut(BuildContext context) async {
    await _authController.signOut();
    _authController.clearAuthPref();
    _authController.authStateStream.listen(
      (User? user) {
        if (user == null) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.authView, (Route<dynamic> route) => false);
        }
      },
    );
  }
}
