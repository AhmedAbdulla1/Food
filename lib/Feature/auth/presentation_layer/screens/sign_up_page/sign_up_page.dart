import 'package:flutter/material.dart';
import 'Widget/sign_up_body.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SignUpBody(),
    );
  }
}
