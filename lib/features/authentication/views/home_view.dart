import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/controllers/database_controller.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/shared/loading_spinner.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final AuthController _authController = Get.find<AuthController>();
  final DataBaseController _db = Get.find<DataBaseController>();

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
            ),
            onPressed: () async {
              await _authController.signOut();
              _authController.clearAuthPref();
              _authController.authStateStream.listen(
                (User? user) {
                  if (user == null) {
                    Navigator.pushNamedAndRemoveUntil(context, Routes.authView,
                        (Route<dynamic> route) => false);
                  }
                },
              );
            },
          ),
        ],
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: _db.users.doc(FirebaseAuth.instance.currentUser!.uid).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Document does not exist");
          }

          if (snapshot.hasData) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Full Name: ${data['userName']}",
                  ),
                  Text(
                    "Email: ${data['userEmail']}",
                  ),
                  data['userImage'] == Imagespath.userIcon
                      ? Image.asset(Imagespath.userIcon)
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            data['userImage'],
                          ),
                        ),
                ],
              ),
            );
          }

          return Center(
            child: LoadingSpinner(
              color: AppColors.primaryColor,
            ),
          );
        },
      ),
    );
  }
}
