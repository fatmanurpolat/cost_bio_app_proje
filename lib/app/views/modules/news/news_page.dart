import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/config/styles/app_text_styles.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:cost_boi_proje/app/views/widgets/custom_elevated_button.dart';
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
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 28.0, right: 28, top: 28, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lilac, width: 1),
                        borderRadius: BorderRadius.circular(20)
                        // color: AppColors.kremColor,
                        ),
                    width: width * 0.25,
                    height: height * 0.1,
                    child: CircleAvatar(
                        child: Image.asset(
                      AppConstants.iconAssetsPath.iconDigital,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lilac, width: 1),
                        borderRadius: BorderRadius.circular(20)
                        // color: AppColors.kremColor,
                        ),
                    width: width * 0.25,
                    height: height * 0.1,
                    child: CircleAvatar(
                        child: Image.asset(
                      AppConstants.iconAssetsPath.iconSupport,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lilac, width: 1),
                        borderRadius: BorderRadius.circular(20)
                        // color: AppColors.kremColor,
                        ),
                    width: width * 0.25,
                    height: height * 0.1,
                    child: CircleAvatar(
                        child: Image.asset(
                      AppConstants.iconAssetsPath.iconNetwork,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lilac, width: 1),
                        borderRadius: BorderRadius.circular(20)
                        // color: AppColors.kremColor,
                        ),
                    width: width * 0.25,
                    height: height * 0.1,
                    child: CircleAvatar(
                        child: Image.asset(
                      AppConstants.iconAssetsPath.iconScience,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 2),
          SizedBox(
            height: height * .06,
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
                    border: Border.all(color: AppColors.lilac, width: 3),
                  ),
                  width: width * 0.48,
                  height: height * 0.48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AppConstants.homepageImages.newsPhoto,
                        fit: BoxFit
                            .cover, // Resmi container boyutuna uyacak şekilde ölçekle
                      ),
                      Text(
                        "News",
                        textAlign: TextAlign.center,
                        style: AppFonts.texts(
                          color: AppColors.black,
                          fontSize: 25,
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Learn More",
                        onPressed: () {},
                        backColor: AppColors.darkPurple,
                        textColor: AppColors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lilac, width: 3),
                  ),
                  width: width * 0.48,
                  height: height * 0.48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AppConstants.homepageImages.newsPhoto,
                        fit: BoxFit
                            .cover, // Resmi container boyutuna uyacak şekilde ölçekle
                      ),
                      Text(
                        "News",
                        textAlign: TextAlign.center,
                        style: AppFonts.texts(
                          color: AppColors.black,
                          fontSize: 25,
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Learn More",
                        onPressed: () {},
                        backColor: AppColors.darkPurple,
                        textColor: AppColors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lilac, width: 3),
                  ),
                  width: width * 0.48,
                  height: height * 0.48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AppConstants.homepageImages.newsPhoto,
                        fit: BoxFit
                            .cover, // Resmi container boyutuna uyacak şekilde ölçekle
                      ),
                      Text(
                        "News",
                        textAlign: TextAlign.center,
                        style: AppFonts.texts(
                          color: AppColors.black,
                          fontSize: 25,
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Learn More",
                        onPressed: () {},
                        backColor: AppColors.darkPurple,
                        textColor: AppColors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lilac, width: 3),
                  ),
                  width: width * 0.48,
                  height: height * 0.48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AppConstants.homepageImages.newsPhoto,
                        fit: BoxFit
                            .cover, // Resmi container boyutuna uyacak şekilde ölçekle
                      ),
                      Text(
                        "News",
                        textAlign: TextAlign.center,
                        style: AppFonts.texts(
                          color: AppColors.black,
                          fontSize: 25,
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Learn More",
                        onPressed: () {},
                        backColor: AppColors.darkPurple,
                        textColor: AppColors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lilac, width: 3),
                  ),
                  width: width * 0.48,
                  height: height * 0.48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AppConstants.homepageImages.newsPhoto,
                        fit: BoxFit
                            .cover, // Resmi container boyutuna uyacak şekilde ölçekle
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.pageBackgroundColor),
                        child: Text(
                          "News",
                          textAlign: TextAlign.center,
                          style: AppFonts.texts(
                            color: AppColors.black,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Learn More",
                        onPressed: () {},
                        backColor: AppColors.darkPurple,
                        textColor: AppColors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lilac, width: 3),
                  ),
                  width: width * 0.48,
                  height: height * 0.48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AppConstants.homepageImages.newsPhoto,
                        fit: BoxFit
                            .cover, // Resmi container boyutuna uyacak şekilde ölçekle
                      ),
                      Text(
                        "News",
                        textAlign: TextAlign.center,
                        style: AppFonts.texts(
                          color: AppColors.black,
                          fontSize: 25,
                        ),
                      ),
                      CustomElevatedButton(
                        text: "Learn More",
                        onPressed: () {},
                        backColor: AppColors.darkPurple,
                        textColor: AppColors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
