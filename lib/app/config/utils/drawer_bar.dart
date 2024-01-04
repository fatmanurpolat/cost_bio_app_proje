import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/config/styles/app_text_styles.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:cost_boi_proje/app/routes/app_routest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red.shade900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  AppConstants.logoAssetsPath.whiteLogo,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    AppConstants.home,
                    style: AppFonts.texts(
                      color: AppColors.white,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.home);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    AppConstants.about_us,
                    style: AppFonts.texts(
                      color: AppColors.white,
                    ),
                  ),
                  onTap: () {
                    Get.offNamed(AppRoutes.about);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    AppConstants.mission,
                    style: AppFonts.texts(
                      color: AppColors.white,
                    ),
                  ),
                  onTap: () {
                    Get.offNamed(AppRoutes.mission);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.supervised_user_circle_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    AppConstants.communication,
                    style: AppFonts.texts(
                      color: AppColors.white,
                    ),
                  ),
                  onTap: () {
                    Get.offNamed(AppRoutes.comminication);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, bottom: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    AppConstants.resources,
                    style: AppFonts.texts(
                      color: AppColors.white,
                    ),
                  ),
                  onTap: () {
                    Get.offNamed(AppRoutes.resource);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    AppConstants.contact,
                    style: AppFonts.texts(
                      color: AppColors.white,
                    ),
                  ),
                  onTap: () {
                    Get.offNamed(AppRoutes.contact);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
