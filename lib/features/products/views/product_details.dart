import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/features/products/widgets/buy_now_button.dart';
import 'package:e_commerce/features/products/widgets/favorite_floating_button.dart';
import 'package:e_commerce/features/products/widgets/product_bottom_sheet.dart';
import 'package:e_commerce/features/products/widgets/product_colors.dart';
import 'package:e_commerce/features/products/widgets/product_info.dart';
import 'package:e_commerce/features/products/widgets/product_review_favorite_price.dart';
import 'package:e_commerce/features/products/widgets/product_size.dart';
import 'package:e_commerce/features/products/widgets/share_floating_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsView extends StatelessWidget {
  final Product product;

  const ProductDetailsView({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
              product.image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 20,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 325,
                ),
                Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          ProductBottomSheet(product: product),
        ],
      ),
    );
  }
}









