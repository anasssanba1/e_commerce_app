import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/database_controller.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/loading_spinner.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
  final DataBaseController _db = Get.find<DataBaseController>();
  final Map<IconData, String> items = {
    Icons.person: 'Profile',
    Icons.home: 'Home',
    Icons.shopping_cart_outlined: 'My Cart',
    Icons.favorite: 'Favorite',
    Icons.list: 'Orders',
    Icons.notifications: 'Notifications',
    Icons.logout: 'Sign Out',
  };
  SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(items.entries);
    return Scaffold(
      body: FutureBuilder<DocumentSnapshot>(
        future: _db.users.doc(FirebaseAuth.instance.currentUser!.uid).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: AppText(
                text: 'Oops! something went wrong.',
                fontSize: FontSizes.middleSize,
                color: AppColors.errorColor,
                fontWeight: FontWeights.bold,
              ),
            );
          }
          if (snapshot.hasData && !snapshot.data!.exists) {
            return AppText(
              text: 'the information you want to access is no longer there!',
              fontSize: FontSizes.middleSize,
              color: AppColors.errorColor,
            );
          }
          if (snapshot.hasData) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Responsive.screenHeight(8, context),
                ),
                data['userImage'] == Imagespath.userIcon
                    ? Image.asset(Imagespath.userIcon)
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: Responsive.screenHeight(20, context),
                          width: Responsive.screenWidth(38, context),
                          child: Image.network(
                            data['userImage'],
                            height: Responsive.screenHeight(50, context),
                            width: Responsive.screenWidth(50, context),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                SizedBox(
                  height: Responsive.screenHeight(2, context),
                ),
                AppText(
                  text: '${data['userName']}',
                  fontSize: FontSizes.middleSize,
                  color: AppColors.kBlack,
                  fontWeight: FontWeights.bold,
                ),
                SizedBox(
                  height: Responsive.screenHeight(1, context),
                ),
                AppText(
                  text: '${data['userEmail']}',
                  fontSize: FontSizes.middleSize,
                  color: AppColors.kBlack,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: Responsive.screenHeight(5, context),
                ),
                ...items.entries
                    .map(
                      (value) => ListTile(
                        onTap: () {},
                        leading: Icon(
                          value.key,
                          color: AppColors.primaryColor,
                        ),
                        title: AppText(
                          text: value.value,
                          fontSize: FontSizes.middleSize,
                          color: AppColors.kBlack,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                    .toList(),
              ],
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
