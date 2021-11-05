import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          Routes.productDetailsView,
          arguments: product,
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              AppColors.primaryColor.withOpacity(0.7),
              AppColors.secondaryColor.withOpacity(0.7),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 180,
                ),
                Container(
                  height: 33,
                  width: 33,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 15,
                    color: AppColors.kWhite,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 230,
              child: Image.asset(
                product.image,
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 8,
                ),
                AppText(
                  text: product.name,
                  fontSize: FontSizes.middleSize,
                  color: AppColors.kWhite,
                ),
                SizedBox(
                  height: 8,
                ),
                AppText(
                  text: '\$${product.price}',
                  fontSize: FontSizes.middleSize,
                  color: AppColors.kWhite,
                  fontWeight: FontWeights.bold,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    starts(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Row starts() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: Colors.amber,
        )
      ],
    );
  }
}
