import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/features/products/widgets/product_item.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/material.dart';

class WatchesView extends StatelessWidget {
  const WatchesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          clipBehavior: Clip.none,
          children: [
            SizedBox(height: 10),
            SizedBox(
              height: 340,
              width: double.infinity,
              child: ListView.builder(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final Product product = manProducts[index];
                  return ProductItem(product: product);
                },
                itemCount: manProducts.length,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 340,
              width: double.infinity,
              child: ListView.builder(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final Product product = womanProducts[index];
                  return ProductItem(product: product);
                },
                itemCount: manProducts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
