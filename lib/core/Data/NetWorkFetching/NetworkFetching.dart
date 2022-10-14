import 'package:akl/Feature/layout_page.dart';
import 'package:flutter/material.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:get/get.dart';

// This File Should Be Deleted!.
class FetchingContent extends StatelessWidget {
  FetchingContent({super.key});
  final ApiController networkInjection = Get.put(ApiController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (networkInjection.isLoading.value == true) {
          networkInjection.FetchProduct();
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return LayoutPage();
        }
      },
    );
  }
}
