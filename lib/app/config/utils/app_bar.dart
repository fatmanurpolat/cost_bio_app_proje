import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.darkPurple,
              AppColors.lilac,
              AppColors.blueBabe,
            ], // İki farklı renk
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      elevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
          icon: Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.menu,
              color: AppColors.darkPurple,
            ),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      actions: <Widget>[
        GestureDetector(
          onTap: () {
            print('Resme tıklandı');
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.asset(AppConstants.logoAssetsPath.whiteLogo,
                color: AppColors.darkPurple),
          ),
        ),
        IconButton(
          icon: Icon(Icons.search, color: AppColors.darkPurple),
          onPressed: () {
            print('Arama butonuna basıldı');
          },
        ),
      ],
    );
  }
}
