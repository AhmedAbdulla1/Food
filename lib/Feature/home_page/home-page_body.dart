import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/ListView/ListView.dart';
import 'widgets/PageView/thePageView.dart';
import 'widgets/TopBarWidgets/custom_top_bar.dart';
import 'widgets/dots_indicator.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  final ApiController netWorkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
           CustomTopBar(),

          // ThePageView(),
          // const SizedBox(height: 10),
          // TheDotsIndicator(),
          // const SizedBox(height: 10),
          // Row(
          //   children: [
          //     CustomTitle(
          //       text: "Popular .",
          //       color: mainBlackColor,
          //       size: 25,
          //     ),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     CustomTitle(
          //       text: "Food pairing",
          //       color: textColor,
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 20),
          // TheListView(),
        ],
      ),
    );
  }
}
