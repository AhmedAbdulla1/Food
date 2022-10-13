import 'package:flutter/material.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:get/get.dart';

import '../ListViewWidgets/FirstContainer.dart';
import '../ListViewWidgets/SecondContainer.dart';

class TheListView extends StatelessWidget {
  TheListView({super.key});
  final ApiController networkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: networkInjection.response.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Row(
            children: [
              FirstContainer(
                index: index,
              ),
              SecondContainer(index: index),
            ],
          );
        },
      ),
    );
  }
}
