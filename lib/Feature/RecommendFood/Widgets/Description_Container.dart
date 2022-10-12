import 'package:flutter/material.dart';
import 'package:akl/Feature/RecommendFood/Widgets/Expandable_Text.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:get/get.dart';

class DescContainer extends StatelessWidget {
  final int index;
  DescContainer({super.key, required this.index});
  final ApiController networkInjection = Get.put(ApiController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidth(),
      height: GetHeight() - 324, // 324 is Height of Picture!.
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            GetWidthinPixels(20),
          ),
          topRight: Radius.circular(
            GetWidthinPixels(20),
          ),
        ),
      ),
      child: Column(
        children: [
          ExpandableText(Text: networkInjection.response[index].description),
        ],
      ),
    );
  }
}
