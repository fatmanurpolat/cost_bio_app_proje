import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/utils/app_bar.dart';
import 'package:cost_boi_proje/app/config/constants/bottom_nav_bar.dart';
import 'package:cost_boi_proje/app/config/utils/drawer_bar.dart';
import 'package:cost_boi_proje/app/views/modules/mission/menus/notification.dart';
import 'package:cost_boi_proje/app/views/modules/news/news_page.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const NewsPage(),
    NotificationItem(
      title: "Notification Title ",
      content: "Notification Content ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        appBar: MyAppBar(),
        drawer: DrawerBar(),
        body: SingleChildScrollView(
          child: _pages[_selectedIndex],
        ));
  }
}
