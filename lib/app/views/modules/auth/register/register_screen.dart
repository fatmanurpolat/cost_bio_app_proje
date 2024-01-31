import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/config/styles/app_text_styles.dart';
import 'package:cost_boi_proje/app/controllers/auth/register/register_controller.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:cost_boi_proje/app/views/widgets/custom_elevated_button.dart';
import 'package:cost_boi_proje/app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final RegisterPageController controller;

  const RegisterScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          color: AppColors.darkPurple,
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
                    color: AppColors.darkPurple,
                    width: width * 0.5,
                    height: height * 0.3,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Text(
                  AppConstants.welcomeDescription,
                  style: AppFonts.texts(color: AppColors.white, fontSize: 25),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: AppConstants.mail,
                ),
                const SizedBox(height: 5),
                CustomTextFormField(
                  // validator: (value) => value?.validatePassword(value),
                  controller: controller.passwordController,
                  hintText: AppConstants.passwordText,
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
                  backColor: AppColors.lilac,
                  textColor: AppColors.white,
                  onPressed: () {
                    controller.onSignUpButtonPressed();
                  },
                  text: AppConstants.registerButtonText,
                ),
                GestureDetector(
                  child: Text(
                    AppConstants.loginButtonText,
                    style: AppFonts.texts(
                      color: AppColors.white,
                    ),
                  ),
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
