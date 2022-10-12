import 'package:akl/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  bool? phone;
  final String hintText;
  final IconData prefixIcon;
  CustomTextFormField(
      {super.key,
      this.phone,
      required this.hintText,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              blurStyle: BlurStyle.outer,
            )
          ]),
      child: TextFormField(
        style:const TextStyle(
          fontSize: 25,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon,color: mainColor,),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 18,),
          border: InputBorder.none,
        ),

        keyboardType: phone == null ? null : TextInputType.number,
        // Restricting The input to be only numbers..
        inputFormatters: phone == null
            ? null
            : <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
      ),
    );
  }
}
