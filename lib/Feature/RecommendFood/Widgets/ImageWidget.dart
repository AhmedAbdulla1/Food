import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:get/get.dart';

class ImageWidget extends StatelessWidget {
  int index;
  ImageWidget({super.key, required this.index});
  var NetworkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: GetWidth(),
      height: GetHeightInPixels(300), // Height of Picture!.
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(NetworkInjection.response[index].image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
