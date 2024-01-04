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
