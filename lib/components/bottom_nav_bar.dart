import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          color: Colors.grey[400],
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: const Color.fromARGB(255, 103, 121, 135),
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            ),
          ]),
    );
  }
}