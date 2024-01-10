import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kremColor, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    // color: AppColors.kremColor,
                  ),
                  width: width * 0.25,
                  height: height * 0.1,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kremColor, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    // color: AppColors.kremColor,
                  ),
                  width: width * 0.25,
                  height: height * 0.1,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kremColor, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    // color: AppColors.kremColor,
                  ),
                  width: width * 0.25,
                  height: height * 0.1,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kremColor, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    // color: AppColors.kremColor,
                  ),
                  width: width * 0.25,
                  height: height * 0.1,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kremColor, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    // color: AppColors.kremColor,
                  ),
                  width: width * 0.25,
                  height: height * 0.1,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greyColor,
                  ),
                  width: width * 0.3,
                  height: height * 0.38,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greyColor,
                  ),
                  width: width * 0.3,
                  height: height * 0.38,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greyColor,
                  ),
                  width: width * 0.3,
                  height: height * 0.38,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greyColor,
                  ),
                  width: width * 0.3,
                  height: height * 0.38,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greyColor,
                  ),
                  width: width * 0.3,
                  height: height * 0.38,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greyColor,
                  ),
                  width: width * 0.3,
                  height: height * 0.38,
                  child: Text(
                    "child",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Container(
              child: Image.asset(
                AppConstants.homepageImages.european_research,
                fit: BoxFit.cover,
              ),
              width: width * 0.9,
              height: height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
