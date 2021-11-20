import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 350,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextField(
              style: GoogleFonts.firaCode(
                  letterSpacing: 1.0,
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
              cursorColor: Color(0xff121212),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: GoogleFonts.firaCode(
                  letterSpacing: 1.0,
                  color: Colors.black,
                  fontSize: 14,
                ),
                border: InputBorder.none,
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(
                  FontAwesomeIcons.search,
                  size: 15,
                  color: Color(0xff121212),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
