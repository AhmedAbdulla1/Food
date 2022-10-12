import 'package:flutter/material.dart';
import 'package:akl/Feature/HomePage/Widgets/PageViewWidgets/ratingFood.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:get/get.dart';

import '../../../../Feature/HomePage/Widgets/bunchOfIcons.dart';


class AlignedContainer extends StatelessWidget {
  final int  index;
  AlignedContainer({super.key, required this.index});
  final ApiController networkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: GetWidth() * .80,
        height: GetHeightinPixels(150),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(GetWidthinPixels(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: GetWidthinPixels(20),
              vertical: GetHeightinPixels(20)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Make Stars Package.!
                RatingFood(
                  index: index,
                ),
                // Make Stars Package.!

                RowofIcons(
                    readyOrNot: "normal",
                    location: "1.7 km",
                    timeToMakeFood: networkInjection.response[index].totalTime),
              ]),
        ),
      ),
    );
  }
}
