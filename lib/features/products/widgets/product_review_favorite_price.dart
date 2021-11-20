import 'package:e_commerce/features/products/modules/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_Review_Favorite_Price extends StatelessWidget {
  const Product_Review_Favorite_Price({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Text(
              '\$38.00',
              style: GoogleFonts.jetBrainsMono(
                letterSpacing: 1.0,
                color: Colors.grey.shade500,
                fontSize: 14,
              ),
            ),
            Positioned(
              bottom: 6,
              child: Container(
                height: 2,
                width: 46,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
        SizedBox(width: 5),
        Text(
          "\$${product.price}",
          style: GoogleFonts.jetBrainsMono(
            letterSpacing: 1.0,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        SizedBox(width: 110),
        Text(
          '4.8',
          style: GoogleFonts.jetBrainsMono(
            letterSpacing: 1.0,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        SizedBox(width: 2),
        Icon(
          Icons.star,
          color: Colors.deepOrange,
          size: 17,
        ),
        SizedBox(width: 13),
        Text(
          '244',
          style: GoogleFonts.jetBrainsMono(
            letterSpacing: 1.0,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        SizedBox(width: 2),
        Icon(
          Icons.favorite,
          color: Colors.deepOrange,
          size: 17,
        )
      ],
    );
  }
}
