import 'package:flutter/material.dart';

import '../Widgets/Description_Container.dart';
import '../Widgets/ImageWidget.dart';

class RecommendedFood extends StatelessWidget {
  final int index;
  const RecommendedFood({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ImageWidget(index: index),
            DescContainer(index: index),
          ],
        ),
      ),
    );
  }
}
