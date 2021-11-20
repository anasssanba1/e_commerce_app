import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:flutter/material.dart';

class GridTileFooter extends StatelessWidget {
  const GridTileFooter({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(
          0xFF141414,
        ).withOpacity(0.7),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
      height: 60,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: '\$${product.price}',
            color: Colors.white,
            fontSize: 16,
          ),
          SizedBox(
            height: 2,
          ),
          AppText(
            text: '${product.name}',
            fontSize: 16,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
