import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 15,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: CupertinoIcons.home,

              text: '  Home',
            ),

            GButton(
              icon: CupertinoIcons.cart,
              text: '  Cart',
            )
          ],
        ),
      ),
    );
  }
}
