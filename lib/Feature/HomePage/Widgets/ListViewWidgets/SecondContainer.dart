import 'package:flutter/material.dart';
import 'package:akl/Feature/HomePage/Widgets/bunchOfIcons.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/constant/TextWidget.dart';
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
      height: GetHeightinPixels(130),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(GetWidthinPixels(15)),
            bottomRight: Radius.circular(GetWidthinPixels(15))),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: GetWidthinPixels(10), vertical: GetHeightinPixels(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mytext(
              theText: NetworkInjection.response[index].name,
              textColour: mainBlackColor,
              textSize: 20,
            ),
            const SizedBox(height:20),
            const Mytext(
              theText: "With Chinese Characteristics",
              textColour: textColor,
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
