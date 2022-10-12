import 'package:flutter/material.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:get/get.dart';



class FirstContainer extends StatelessWidget {
  final int index;
  FirstContainer({super.key, required this.index});
  final ApiController networkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidthinPixels(150),
      height: GetHeightinPixels(150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(GetHeightinPixels(15)),
        image: DecorationImage(
          image: NetworkImage(networkInjection.response[index].image),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.only(bottom: GetHeightinPixels(10)),
    );
  }
}
