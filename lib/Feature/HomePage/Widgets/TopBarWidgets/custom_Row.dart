import 'package:flutter/material.dart';
import 'package:akl/core/constant/TextWidget.dart';
import 'package:akl/core/constant/colors.dart';

import 'searchContainer.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Mytext(
                  theText: "Egypt",
                  textColour: mainColor,
                  textSize: 35,
                ),
                Row(
                  children: const [
                    Mytext(
                      theText: "6th of october city",
                      textColour: textColor,
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                )
              ],
            ),
            const SearchContainer(),
          ],
        ),
      ],
    );
  }
}
