import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:akl/Feature/home_page/Widgets/PageViewWidgets/AllignedContainer.dart';
import 'package:akl/Feature/home_page/Widgets/PageViewWidgets/mainpageviewcontainer.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:get/get.dart';


class ThePageView extends StatelessWidget {
  ThePageView({super.key});
  final PageViewController injection = Get.put(PageViewController());
  final ApiController netWorkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: injection.itemCount,
      carouselController: injection.theCarosurController, // Carsour Controller.

      options: CarouselOptions(
        // Edit here to change alignments.! Position depends on space available to detect bottom Center..

        height: GetHeightInPixels(275),

        // Edit here to change alignments.! Position depends on space available to detect bottom Center..,
        initialPage: 0, // FirstPage

        // Make's it reversible.. Circle Walkthrough!.
        enableInfiniteScroll: false,
        // Make's it reversible.. Circle Walkthrough!.

        // -> aspectRatio: 2.0, // Size Of Child..

        // Auto jump to the next index of the child in the pageview..

        autoPlay: true,

        // Auto jump to the next index of the child in the pageview..

        // Getting the value of index..

        onPageChanged: (index, reason) {
          injection.pagePosition(index);
        },

        // Getting the value of index..

        // Matrix Animation..

        enlargeCenterPage: true,
        // Matrix Animation..

        // ScrollingValueGetter..
        // PageValue Getter...

        onScrolled: (value) {
          injection.pageValueDetector(value);
        },
        // ScrollingValueGetter..
      ),

      itemBuilder: (context, index, realIndex) {
        // IndexIsPageIndex..
        //SameForrealIndex..
        return Stack(
          children: [
            MainPageViewContainer(
              index: index,
            ),
            AlignedContainer(
              index: index,
            ),
          ],
        );
      },
    );
  }
}
