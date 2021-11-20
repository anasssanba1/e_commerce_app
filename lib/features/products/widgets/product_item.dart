import 'package:flutter/material.dart';
import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/features/products/widgets/grid_tile_footer.dart';
import 'package:e_commerce/features/products/widgets/grid_tile_header.dart';


class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: GridTileHeader(),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        elevation: 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            product.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      footer: GridTileFooter(product: product),
    );
  }
}



