import 'package:flutter/material.dart';
import 'package:akl/core/constant/TextWidget.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:get/get.dart';
import '../../HomePage/Screen/HomePage.dart';
import '../Widgets/ImageLogo.dart';
import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: GetWidthinPixels(15)),
          child: Column(
            children: [
              const SizedBox(height:20),
              const ImageLogo(),
              const SizedBox(height:20),
              CustomTextFormField(
                hintText: AutofillHints.email,
                prefixIcon: Icons.email_rounded,
              ),
              const SizedBox(height:15),
              CustomTextFormField(
                hintText: AutofillHints.password,
                prefixIcon: Icons.password,
              ),
              const SizedBox(height:15),
              CustomTextFormField(
                hintText: AutofillHints.telephoneNumber,
                prefixIcon: Icons.phone_android_sharp,
              ),
              const SizedBox(height:15),
              CustomTextFormField(
                hintText: AutofillHints.name,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height:40),
              CustomButtonContainer(
                containerText: "Sign Up",
                containerSize: 20,
                onTap: () {
                  Get.to(HomePage());
                },
              ),
              const SizedBox(height:10),
              const Mytext(
                theText: 'Have an Account ?',
                textSize: 20,
              ),
              const SizedBox(height:20),
              const Mytext(
                theText: 'Sign Up using one of the following methods',
                textSize: 16,
              ),
              const SizedBox(height:20),
            ],
          ),
        ),
      ),
    );
  }
}
