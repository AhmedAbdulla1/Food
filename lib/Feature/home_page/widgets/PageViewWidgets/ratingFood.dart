import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:akl/core/Controller/Controller.dart';
import 'package:get/get.dart';

class RatingFood extends StatelessWidget {
  int index;
  RatingFood({super.key, required this.index});
  var NetworkInjection = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      allowHalfRating: true,
      ignoreGestures: true, //Convert it to Read Only!.
      initialRating: NetworkInjection.response[index].rating,
      direction: Axis.horizontal,
      minRating: 1,
      maxRating: 5,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Icon(
          Icons.star,
          color: Colors.amber,
          size: 10,
        );
      },
      onRatingUpdate: (value) {}, // Will be updated Later
    );
  }
}
