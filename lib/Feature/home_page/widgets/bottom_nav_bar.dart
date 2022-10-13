import 'package:akl/core/Widgets/custom_Text_Widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        onTap: (value){},

        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            label: 'Orders',
            icon: FaIcon(FontAwesomeIcons.shapes,),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_outlined),
          ),

        ]);
  }
}
