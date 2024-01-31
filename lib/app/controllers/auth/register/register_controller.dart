// ignore_for_file: dead_code

import 'package:cost_boi_proje/app/data/services/auth_services.dart';
import 'package:cost_boi_proje/app/routes/app_routest.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';


class RegisterPageController extends GetxController {
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  RxInt selectedIndex = 0.obs;

  RxBool isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.toggle();
  }

  AuthService authService = Get.put(AuthService());

  void onSignUpButtonPressed() async {

    String email = emailController.text;
    String password = passwordController.text;

    bool success = await authService.register(

      email: email,
      password: password,
    );

    if (success) {
      QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.success,
        text: 'Giriş başarılı bir şekilde tamamlandı!',
      );
      print("kayıt başarılııııı");
      Future.delayed(const Duration(seconds: 2), () {
        Get.closeAllSnackbars();
        selectedIndex.value == 0
            ? Get.offAndToNamed(AppRoutes.home)
            : Get.offAndToNamed(AppRoutes.splash);
      });
    } else {
      QuickAlert.show(
          context: Get.context!,
          type: QuickAlertType.error,
          text: 'Giriş İşlemi Başarısız Oldu',
          width: Get.size.width * 0.20);
    }
  }
}
