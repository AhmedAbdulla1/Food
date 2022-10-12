import 'package:akl/Feature/auth/PresentationLayer/Screens/SignInPage/SignInPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Feature/HomePage/Screen/HomePage.dart';
import 'Feature/auth/PresentationLayer/Screens/sign_up_page/SignUpPage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // this is the first change in this repo
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        'sign_up_page':(context)=>const SignUpPage(),
        'SignInPage':(context)=>const SignInPage() ,
        "HomePage": (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: "SignInPage",
    );
  }
}
