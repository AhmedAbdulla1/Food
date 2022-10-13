import 'package:flutter/material.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:get/get.dart';
import '../../../RecommendFood/Screen/RecommendFood.dart';


class MainPageViewContainer extends StatelessWidget {
  final int index;
  MainPageViewContainer({super.key, required this.index});
  final ApiController networkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        () => RecommendedFood(index: index),
      ),
      child: Container(
        width: GetWidth(),
        height: GetHeightInPixels(200),
        margin: EdgeInsets.only(
          right: GetWidthInPixels(5),
        ), // Margin to disconnect page1 from page 2..
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(networkInjection.response[index].image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            GetWidthInPixels(20),
          ),
        ),
      ),
    );
  }
}
