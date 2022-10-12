import 'package:flutter/material.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:get/get.dart';

import '../Widgets/ListView/ListView.dart';
import '../Widgets/TopBarWidgets/custom_Row.dart';
import '../Widgets/PageView/thePageView.dart';
import '../Widgets/dots_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  PageViewController injection = Get.put(PageViewController());
  ApiController netWorkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: GetWidthInPixels(10),
          ),
          child: SizedBox(
            height: GetHeight(),
            child: Column(
              children: [
                const CustomRow(),
                ThePageView(),
                SizedBox(height:10),
                TheDotsIndicator(),
                SizedBox(height:10),
                Row(
                  children: [
                    CustomTitle(
                      text: "Popular .",
                      color: mainBlackColor,
                      size: 25,
                    ),
                    const SizedBox(height: 20,),
                    CustomTitle(
                      text: "Food pairing",
                      color: textColor,
                    ),
                  ],
                ),
                const SizedBox(height:20),
                TheListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
