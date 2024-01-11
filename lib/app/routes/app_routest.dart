import 'package:cost_boi_proje/app/controllers/auth/login/login_controller.dart';
import 'package:cost_boi_proje/app/views/modules/auth/login/login_screen.dart';
import 'package:cost_boi_proje/app/views/modules/mission/menus/home_page.dart';
import 'package:cost_boi_proje/app/views/modules/about_us/about_page.dart';
import 'package:cost_boi_proje/app/views/modules/communacation/communication_page.dart';
import 'package:cost_boi_proje/app/views/modules/contact/contact_page.dart';
import 'package:cost_boi_proje/app/views/modules/mission/mission_page.dart';
import 'package:cost_boi_proje/app/views/modules/resources/resources_page.dart';
import 'package:cost_boi_proje/app/views/modules/splash/splash_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  static const splash = '/splash';
  static const onboarding = '/onboarding';
  static const getLocation = '/getLocation';
  static const login = '/login';

  static const register = '/register';
  static const forgotPassword = '/forgotPassword';
  static const otp = '/otp';
  static const newPassword = '/newPassword';
  static const profile = '/profile';
  static const permission = '/permission';
  static const getPermission = '/getPermission';
  static const about = '/about';
  static const mission = '/mission';
  static const comminication = '/comminication';
  static const resource = '/resource';
  static const contact = '/contact';

  static const home = '/home';

  static List<GetPage<dynamic>> routes = <GetPage<dynamic>>[

    GetPage(name: home, page: () => HomePage()),
    GetPage(name: about, page: () => AboutPage()),
        GetPage(name: mission, page: () => MissionPage()),
    GetPage(name: resource, page: () => ResourcesPage()),
    GetPage(name: comminication, page: () => CommunicationPage()),
    GetPage(name: contact, page: () => ContactPage()),
    GetPage(name: splash, page: () => SplashScreen()),

     GetPage(name: login
, page: () => LoginScreen(controller: LoginPageController())),

  ];
}
