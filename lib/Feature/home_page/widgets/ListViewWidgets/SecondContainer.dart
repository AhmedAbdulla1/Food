import 'package:flutter/material.dart';
import 'package:akl/Feature/home_page/Widgets/bunchOfIcons.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:get/get.dart';



class SecondContainer extends StatelessWidget {
  int index;
  SecondContainer({super.key, required this.index});
  var NetworkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidth() -
          170, // 150 In the first container in a Row. + 20 pixels for padding.!
      height: GetHeightInPixels(130),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(GetWidthInPixels(15)),
            bottomRight: Radius.circular(GetWidthInPixels(15))),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: GetWidthInPixels(10), vertical: GetHeightInPixels(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height:20),
            CustomTitle(
              text: "With Chinese Characteristics",
              color: textColor,
            ),
            const SizedBox(height:20),
            RowofIcons(
              readyOrNot: "normal",
              location: "1.7KM",
              timeToMakeFood: NetworkInjection.response[index].totalTime,
            ),
          ],
        ),
      ),
    );
  }
}
