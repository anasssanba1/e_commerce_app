import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/features/products/views/product_details.dart';
import 'package:e_commerce/features/products/widgets/female_products.dart';
import 'package:e_commerce/features/products/widgets/sreach_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FemaleProductView extends StatelessWidget {
  const FemaleProductView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          SearchForm(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New',
                  style: GoogleFonts.aclonica(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  'Collections',
                  style: GoogleFonts.raleway(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          femaleProducts(),
        ],
      ),
    );
  }
}



