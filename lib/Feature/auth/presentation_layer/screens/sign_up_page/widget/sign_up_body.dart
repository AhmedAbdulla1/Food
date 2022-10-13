import 'package:akl/core/Widgets/custom_buttons.dart';
import 'package:akl/core/Widgets/custom_text_form_field.dart';
import 'package:akl/core/Widgets/image_logos.dart';
import 'package:flutter/material.dart';
import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:akl/core/constant/app_layout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: GetWidthInPixels(15)),
          child: ListView(
            children: [
              const SizedBox(height:10),
              const AuthLogo(),
              const SizedBox(height:10),
              CustomTextFormField(
                hintText: AutofillHints.email,
                prefixIcon: Icons.email_rounded,
              ),
              const SizedBox(height:20),
              CustomTextFormField(
                hintText: AutofillHints.password,
                prefixIcon: Icons.password,
              ),
              const SizedBox(height:20),
              CustomTextFormField(
                hintText: AutofillHints.telephoneNumber,
                prefixIcon: Icons.phone_android_sharp,
              ),
              const SizedBox(height:20),
              CustomTextFormField(
                hintText: AutofillHints.name,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height:40),
              CustomButtonContainer(
                text: "Sign Up",
                size: 30,
                onTap: () {
                  Get.toNamed('HomePage');
                },
              ),
              const SizedBox(height:10),
              Center(
                child: CustomSubTitle(
                  text: 'Have an Account ?',
                  size: 20,
                ),
              ),
              const SizedBox(height:20),
              Center(
                child: CustomSubTitle(
                  text: 'Sign Up using one of the following methods',
                  size: 16,
                ),
              ),
              const SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.google,size: 50,color: Colors.redAccent),),
                  const SizedBox(width: 30,),
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter,size: 50,color: Colors.blue,),),
                  const SizedBox(width: 30,),
                  IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook,size: 50,color: Colors.blue,),),

                ],
              )
            ],
          ),
    );
  }
}
