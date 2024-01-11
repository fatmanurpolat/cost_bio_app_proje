import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: GNav(
        color: AppColors.blueBabe,
        activeColor: AppColors.darkPurple,
        tabActiveBorder: Border.all(color: AppColors.lilac),
        tabBackgroundColor: AppColors.lilac,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: AppConstants.home,
            iconSize: 20,
            margin: EdgeInsets.symmetric(
                vertical: 1,
                horizontal: 2), // Adjust the margin to reduce the button size
          ),
          GButton(
            icon: Icons.notifications,
            text: AppConstants.notifications,
            iconSize: 20,
            margin: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
          ),
        ],
      ),
    );
  }
}
