import 'package:flutter/material.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:akl/core/constant/colors.dart';

class CustomButtonContainer extends StatelessWidget {
  final String text;
  final double size;
  final VoidCallback onTap;
  const CustomButtonContainer(
      {super.key,
      required this.text,
      required this.size,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap, // on tap Function to set navigation to later..
        child: Container(
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: GetWidthInPixels(35), // Width of the container
                vertical: GetHeightInPixels(20)), //Height of the container
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size,
              ), // Sizeof the text Dynamic to be used later in sign up page
            ),
          ),
        ),
      ),
    );
  }
}
