import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: GNav(
        color: Colors.grey.shade500,
        activeColor: Colors.red.shade900,
        tabActiveBorder: Border.all(color: Color.fromARGB(255, 186, 109, 109)),
        tabBackgroundColor: Color.fromARGB(255, 234, 234, 234),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: AppConstants.home,
          ),
          GButton(
            icon: Icons.notifications,
            text: AppConstants.notifications,
          ),
        ],
      ),
    );
  }
}
