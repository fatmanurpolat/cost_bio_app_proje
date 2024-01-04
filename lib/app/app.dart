import 'dart:ui';

import 'package:cost_boi_proje/app/views/modules/mission/menus/home_page.dart';
import 'package:cost_boi_proje/app/routes/app_routest.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final FakeAuthService authService =
    //     Get.put(FakeAuthService()); // AuthService'ı buradan alabilirsiniz

// Belirli bir kullanıcı rolü seçin
    // ///[provider ise hizmet veren consumer ise hizmet alan tarafı açılacak]
    // String selectedUserRole = "consumer";

    // // Seçili kullanıcının tipini kontrol et
    // bool isServiceProvider =
    //     authService.isUserServiceProvider(selectedUserRole);

    // Widget initialPage;
    // if (isServiceProvider) {
    //   initialPage =
    //       GlobalBottomNavigationBar(); // Hizmet veren kullanıcı için sayfa
    // } else {
    //   initialPage = CustomerNavigation();
    // }
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.splash,
            home:HomePage(),
            getPages: AppRoutes.routes,
            scrollBehavior:
                const MaterialScrollBehavior().copyWith(dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            })));
  }
}
