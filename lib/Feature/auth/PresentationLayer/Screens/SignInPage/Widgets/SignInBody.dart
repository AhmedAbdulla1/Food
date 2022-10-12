import 'package:akl/Feature/auth/PresentationLayer/Screens/SignUpPage/SignUpPage.dart';
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
        padding: EdgeInsets.symmetric(horizontal: GetWidthinPixels(15)),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AuthLogo(),
                  CustomTitle(
                    text: "Hello",
                    size: 50,
                  ),
                  CustomSubTitle(
                    text: "Sign into your account",
                    size: 20,
                    color: textColor, // Error Hna fel Colour
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    hintText: "Phone",
                    prefixIcon: Icons.phone_android_outlined,
                    phone: true,
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    hintText: "Password",
                    prefixIcon: Icons.password,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    //Row To but the child at mainِِAِِxisAlignment.end..
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      CustomSubTitle(
                        text: "Sign into your account",
                        size: 20,
                        color: textColor, // Error Hna fel Colour
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  CustomButtonContainer(
                      containerText: "Sign in",
                      containerSize: 20,
                      onTap: () {}),
                  const SizedBox(height: 50),
                  Row(
                    // To put different colors of texts in a row..
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSubTitle(
                        text: "Don't have an account?",
                        color: textColor,
                        size: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const SignUpPage());
                        },
                        child:const Text(
                          "Create",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
      );
  }
}