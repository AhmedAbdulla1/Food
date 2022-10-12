import 'package:flutter/material.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:get/get.dart';
import '../../../../HomePage/Screen/HomePage.dart';
import '../../../../../core/Widgets/image_logos.dart';
import '../../../../../core/Widgets/custom_buttons.dart';
import '../../../../../core/Widgets/custom_text_form_field.dart';

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
              const AuthLogo(),
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
              CustomTitle(
                text: 'Have an Account ?',
                size: 20,
              ),
              const SizedBox(height:20),
              CustomTitle(
                text: 'Sign Up using one of the following methods',
                size: 16,
              ),
              const SizedBox(height:20),
            ],
          ),
        ),
      ),
    );
  }
}
