import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Text('welcome to homepage'),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                _authController.signOut();
                _authController.authStateStream.listen(
                  (User? user) {
                    if (user == null) {
                      Navigator.pushNamed(context, Routes.signUpPage);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
