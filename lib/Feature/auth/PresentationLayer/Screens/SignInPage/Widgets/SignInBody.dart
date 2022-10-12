import 'package:akl/core/Widgets/custom_buttons.dart';
import 'package:akl/core/Widgets/custom_text_form_field.dart';
import 'package:akl/core/Widgets/image_logos.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:flutter/material.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:get/get.dart';



class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: GetWidthInPixels(15)),
          child: ListView(
            children: [
              const AuthLogo(),
              CustomTitle(
                text: "Hello",
                size: 70,
              ),
              CustomSubTitle(
                text: "Sign into your account",
                size: 20,
                color: textColor, // Error Hna fel Colour
              ),
              const SizedBox(height: 40,),
              CustomTextFormField(
                hintText: "Phone",
                prefixIcon: Icons.phone_android_outlined,
                phone: true,
              ),
              const SizedBox(height: 20,),
              CustomTextFormField(
                hintText: "Password",
                prefixIcon: Icons.password,
              ),
              const SizedBox(height: 70,),
              CustomButtonContainer(
                  text: "Sign in",
                  size: 30,
                  onTap: () {
                    Get.toNamed('HomePage',);
                  }),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSubTitle(
                    text: "Don't have an account?",
                    color: textColor,
                    size: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed('sign_up_page');
                    },
                    child:const Text(
                      "Create",
                      style: TextStyle(
                        color: mainBlackColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      );
  }
}