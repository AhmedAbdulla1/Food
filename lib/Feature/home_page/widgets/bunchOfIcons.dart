import 'package:flutter/material.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/colors.dart';

class RowofIcons extends StatelessWidget {
  final String readyOrNot;
  final String location;
  final String timeToMakeFood;
  const RowofIcons(
      {super.key,
      required this.readyOrNot,
      required this.location,
      required this.timeToMakeFood});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.yellow,
              ),
              const SizedBox(height:5),

            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: mainColor,
              ),
              const SizedBox(height:5),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                color: iconColor2,
              ),
              const SizedBox(height:5),

            ],
          ),
        ],
      ),
    );
  }
}
