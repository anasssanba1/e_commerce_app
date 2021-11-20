import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/features/products/views/product_details.dart';
import 'package:e_commerce/features/products/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class femaleProducts extends StatelessWidget {
  const femaleProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 12,
          mainAxisExtent: 300,
          mainAxisSpacing: 12,
          crossAxisCount: 2,
        ),
        itemCount: womanProducts.length,
        itemBuilder: (BuildContext context, int index) {
          final Product product = womanProducts[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailsView(
                    product: product,
                  ),
                ),
              );
            },
            child: ProductItem(
              product: product,
            ),
          );
        },
      ),
    );
  }
}
