import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:cost_boi_proje/app/routes/app_routest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  nextScreen() async {
    Future.delayed(const Duration(seconds: 2), () async {
      await Get.offNamedUntil(AppRoutes.home, (route) => false);
      // await Get.offNamedUntil(AppRoutes.home, (route) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      nextScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppConstants.logoAssetsPath.splashLogo,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            const SizedBox(
              width: 100,
              height: 100,
            ),
            SpinKitChasingDots(
              color: AppColors.darkPurple.withOpacity(0),
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
