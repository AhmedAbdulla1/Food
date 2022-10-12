import 'package:flutter/material.dart';
import 'package:akl/core/constant/TextWidget.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:get/get.dart';
import '../Widgets/ImageLogo.dart';
import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_text_form_field.dart';
import 'SignUpPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: GetWidthinPixels(15)),
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ImageLogo(),
                  const Mytext(
                    theText: "Hello",
                    textSize: 50,
                    thisFontWeight: FontWeight.bold,
                  ),
                  const Mytext(
                    theText: "Sign into your account",
                    textSize: 20,
                    textColour: textColor, // Error Hna fel Colour
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
                    children: const [
                      Mytext(
                        theText: "Sign into your account",
                        textSize: 20,
                        textColour: textColor, // Error Hna fel Colour
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
                      const Mytext(
                        theText: "Don't have an account?",
                        textColour: textColor,
                        textSize: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const SignUpPage());
                        },
                        child: const Mytext(
                          theText: "Create",
                          textSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
