import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/styles/app_text_styles.dart';
import 'package:cost_boi_proje/app/config/utils/app_bar.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/config/utils/drawer_bar.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: MyAppBar(),
      drawer: DrawerBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              ' Meet the INE-CSC Leadership Team',
              style:
                  AppFonts.subtitle(fontsize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              child: Image.asset(AppConstants.homepageImages.newsPhoto2),
              width: MediaQuery.of(context).size.width * .6,
            ),
            Text(
              AppConstants.meetWithTeam,
              style: AppFonts.texts(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
