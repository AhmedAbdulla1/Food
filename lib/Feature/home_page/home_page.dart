import 'package:flutter/material.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldColor,
       //body:HomeBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
