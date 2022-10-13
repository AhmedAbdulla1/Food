import 'package:flutter/material.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
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
                CustomTitle(
                  text: "Egypt",
                  color: mainColor,
                  size: 35,
                ),
                Row(
                  children: const [

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
