import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:get/get.dart';

class TheDotsIndicator extends StatelessWidget {
  TheDotsIndicator({super.key});
  final PageViewController injection = Get.put(PageViewController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageViewController>(builder: ((controller) {
      return DotsIndicator(
        dotsCount: injection.itemCount,
        position: injection.pageScrollingValue.value,
        decorator: DotsDecorator(
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      );
    }));
  }
}
