import 'package:flutter/material.dart';
import 'app/app.dart';



void main() async {
  //DependencyCreator.init();

  /// Bildirim Çubuğundaki kısmın özellikleri
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // isViewed = await prefs.getInt('onboard');
  // print(isViewed);

  await initServices();
  runApp(App());
}

initServices() async {
  print('starting services ...');
  print('All services started...');
}
