import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: AppColors.kBlack,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            AppText(
              text: product.name,
              fontSize: FontSizes.bigSize,
              color: AppColors.kBlack,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 370,
                  width: 300,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Column(
                  children: [
                    AppText(
                      text: 'Price:',
                      fontSize: FontSizes.smallSize,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    AppText(
                      text: '\$${product.price}',
                      fontSize: FontSizes.middleSize,
                      color: AppColors.kBlack,
                      fontWeight: FontWeights.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppText(
                      text: 'Review:',
                      fontSize: FontSizes.smallSize,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    AppText(
                      text: (product.review >= 1 && product.review <= 3)
                          ? 'Bad'
                          : 'Good',
                      fontSize: FontSizes.smallSize,
                      color: AppColors.kBlack,
                      fontWeight: FontWeights.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppText(
                      text: 'Owner:',
                      fontSize: FontSizes.smallSize,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    AppText(
                      text: 'JAMES',
                      fontSize: FontSizes.middleSize,
                      color: AppColors.kBlack,
                      fontWeight: FontWeights.bold,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 20,
              color: Colors.transparent,
              child: Container(
                color: Colors.grey.shade200,
                height: 230,
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    AppText(
                      text: 'Overview',
                      color: Colors.grey,
                      fontSize: FontSizes.smallSize,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppText(
                      text: product.description,
                      color: AppColors.kBlack,
                      fontSize: FontSizes.smallSize,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: AppButton(
                        child: AppText(
                          text: 'ADD TO CART',
                          color: AppColors.kWhite,
                          fontSize: FontSizes.smallSize,
                          fontWeight: FontWeight.w600,
                        ),
                        color: AppColors.secondaryColor,
                        secondColor: AppColors.primaryColor,
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
