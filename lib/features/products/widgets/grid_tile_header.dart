import 'package:flutter/material.dart';

class GridTileHeader extends StatelessWidget {
  const GridTileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            color: Colors.black.withOpacity(0.7),
          ),
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
