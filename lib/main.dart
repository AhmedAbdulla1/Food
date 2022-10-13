import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Feature/HomePage/Screen/HomePage.dart';
import 'Feature/auth/presentation_layer/screens/sign_in_page/sign_in_page.dart';
import 'Feature/auth/presentation_layer/screens/sign_up_page/sign_up_page.dart';

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
