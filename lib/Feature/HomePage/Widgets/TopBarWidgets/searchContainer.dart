// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:akl/core/constant/colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidthInPixels(50),
      height: GetHeightInPixels(45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: mainColor,
      ),
      child: const Icon(
        Icons.search_outlined,
        color: Colors.white,
      ),
    );
  }
}
