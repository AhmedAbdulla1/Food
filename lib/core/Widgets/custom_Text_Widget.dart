
import 'package:akl/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  Color? color=mainBlackColor;
  double? size=50;
  CustomTitle(
      {super.key,
      required this.text,
      this.color,
      this.size,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // The Text i'm going to enter to use the TextWidget!.
      style: TextStyle(
        color: color,
        fontSize: size,//Default Size is 50
        fontFamily: "Roboto",
        fontWeight: FontWeight.bold, // Only used if needed.
      ),
    );
  }
}
class CustomSubTitle extends StatelessWidget {
  final String text;
  Color? color=signColor;
  double? size=50;
  CustomSubTitle(
      {super.key,
        required this.text,
        this.color,
        this.size,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // The Text i'm going to enter to use the TextWidget!.
      style: TextStyle(
        color: color,
        fontSize: size,//Default Size is 50
        fontFamily: "Roboto",
        fontWeight: FontWeight.w100, // Only used if needed.
      ),
    );
  }
}