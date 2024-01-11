import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/config/styles/app_text_styles.dart';
import 'package:cost_boi_proje/app/controllers/auth/login/login_controller.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:cost_boi_proje/app/routes/app_routest.dart';
import 'package:cost_boi_proje/app/views/widgets/custom_elevated_button.dart';
import 'package:cost_boi_proje/app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final LoginPageController controller;

  const LoginScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    AppConstants.logoAssetsPath.whiteLogo,
                    color: AppColors.errorRed,
                    width: width * 0.5,
                    height: height * 0.4,
                  ),
                ),
                Text(
                  "Welcome to News!",
                  style: AppFonts.caption(),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "Email",
                ),
                const SizedBox(height: 5),
                CustomTextFormField(
                  // validator: (value) => value?.validatePassword(value),
                  controller: controller.passwordController,
                  hintText: "Password",
                  obscureText: !controller.isPasswordVisible.value,
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.togglePasswordVisibility();
                    },
                    icon: Icon(
                      controller.isPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  backColor: Colors.red.shade900,
                  textColor: AppColors.white,
                  onPressed: () {
                    Get.toNamed(AppRoutes.home);
                  },
                  text: AppConstants.loginButtonText,
                ),
                GestureDetector(
                  child: const Text("Forgot Password"),
                  onTap: () {
                    // Get.toNamed(AppRoutes.passangerLogin);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
