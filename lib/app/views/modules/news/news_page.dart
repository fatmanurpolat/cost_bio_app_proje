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
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lilac, width: 1),
                        borderRadius: BorderRadius.circular(20)
                        // color: AppColors.kremColor,
                        ),
                    width: width * 0.35,
                    height: height * 0.15,
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
                    width: width * 0.35,
                    height: height * 0.15,
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
                    width: width * 0.35,
                    height: height * 0.15,
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
                    width: width * 0.35,
                    height: height * 0.15,
                    child: CircleAvatar(
                        child: Image.asset(
                      AppConstants.iconAssetsPath.iconScience,
                    )),
                  ),
                ],
              ),
            ),
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.pageBackgroundColor),
                        child: Text(
                          "Haber 1",
                          textAlign: TextAlign.center,
                          style: AppFonts.caption(
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.pageBackgroundColor),
                        child: Text(
                          "Haber 1",
                          textAlign: TextAlign.center,
                          style: AppFonts.caption(
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.pageBackgroundColor),
                        child: Text(
                          "Haber 1",
                          textAlign: TextAlign.center,
                          style: AppFonts.caption(
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.pageBackgroundColor),
                        child: Text(
                          "Haber 1",
                          textAlign: TextAlign.center,
                          style: AppFonts.caption(
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.pageBackgroundColor),
                        child: Text(
                          "Haber 1",
                          textAlign: TextAlign.center,
                          style: AppFonts.caption(
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.pageBackgroundColor),
                        child: Text(
                          "Haber 1",
                          textAlign: TextAlign.center,
                          style: AppFonts.caption(
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
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // SingleChildScrollView(
          //   child: Container(
          //     child: Image.asset(
          //       AppConstants.homepageImages.european_research,
          //       fit: BoxFit.cover,
          //     ),
          //     width: width * 0.9,
          //     height: height * 0.2,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
