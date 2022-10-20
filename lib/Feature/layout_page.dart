import 'package:akl/Feature/home_page/home-page_body.dart';
import 'package:akl/Feature/home_page/home_page_app_bar.dart';
import 'package:akl/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    HomeBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: const HomePageAppBar(),
      //body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: mainColor,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              label: 'Orders',
              icon: FaIcon(
                FontAwesomeIcons.shapes,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.shopping_cart_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
