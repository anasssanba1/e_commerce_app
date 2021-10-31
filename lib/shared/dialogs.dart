import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs {
  static void showErrorAlert(BuildContext context, String message) async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: AppText(
          text: 'Something went wrong!',
          color: AppColors.kBlack,
          fontSize: FontSizes.bigSize,
          fontWeight: FontWeights.bold,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              color: AppColors.errorColor,
              size: 35,
            ),
            AppText(
              text: message,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.kBlack,
            ),
            SizedBox(
              height: 20,
            ),
            AppButton(
              child: AppText(
                fontSize: FontSizes.smallSize,
                color: AppColors.kWhite,
                fontWeight: FontWeights.bold,
                text: 'CLOSE',
              ),
              color: AppColors.errorColor,
              secondColor: AppColors.errorColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
