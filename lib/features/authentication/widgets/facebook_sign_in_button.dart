import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookSignInButton extends StatelessWidget {
  const FacebookSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: AppButton(
          onPressed: () {},
          child: Icon(
            FontAwesomeIcons.facebookF,
            color: Colors.blue,
          ),
          color: Colors.white,
          secondColor: Colors.white,
        ),
      ),
    );
  }
}
