import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/features/products/views/product_details.dart';
import 'package:e_commerce/features/products/widgets/add_to_bag_button.dart';
import 'package:e_commerce/features/products/widgets/buy_now_button.dart';
import 'package:e_commerce/features/products/widgets/favorite_floating_button.dart';
import 'package:e_commerce/features/products/widgets/product_colors.dart';
import 'package:e_commerce/features/products/widgets/product_info.dart';
import 'package:e_commerce/features/products/widgets/product_review_favorite_price.dart';
import 'package:e_commerce/features/products/widgets/product_size.dart';
import 'package:e_commerce/features/products/widgets/share_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductBottomSheet extends StatelessWidget {
  const ProductBottomSheet({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DraggableScrollableSheet(
          initialChildSize: 0.53,
          maxChildSize: 0.7,
          minChildSize: 0.53,
          builder: (context, controller) => Container(
            padding: const EdgeInsets.only(left: 30),
            child: ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  product.name,
                  style: GoogleFonts.aclonica(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Product_Review_Favorite_Price(product: product),
                SizedBox(
                  height: 40,
                ),
                ProductColors(),
                SizedBox(
                  height: 40,
                ),
                ProductSize(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Product Information',
                  style: GoogleFonts.jetBrainsMono(
                    color: Colors.white,
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ProductInfo(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Add_To_Bag_Button(),
                    SizedBox(
                      width: 10,
                    ),
                    Buy_Now_Button()
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Color(
                0xFF141414,
              ).withOpacity(0.9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 395,
          right: 25,
          child: Favorite_Floating_Button(),
        ),
        Positioned(
          bottom: 395,
          right: 90,
          child: Share_Floating_Button(),
        )
      ],
    );
  }
}
