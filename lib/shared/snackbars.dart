import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/material.dart';

class SnackBars {
  static void showErrorAlert(context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.errorColor,
        content: AppText(
          text: message,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.kWhite,
        ),
      ),
    );
  }
}
