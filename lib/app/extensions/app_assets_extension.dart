import '../config/constants/app_text_constants.dart';

extension AppAssets on String {
  // ignore: prefer_interpolation_to_compose_strings
  String get whiteLogo => AppConstants.logoAssetsPath + 'logo-white.png';

  String get contactUs =>
      // ignore: prefer_interpolation_to_compose_strings
      AppConstants.homepageImages + 'contact_us.png';
  String get european_research =>
      // ignore: prefer_interpolation_to_compose_strings
      AppConstants.homepageImages + 'european_researchers.jpg';

  // String get contactUs =>
  //     // ignore: prefer_interpolation_to_compose_strings
  //     AppConstants.homepageImages + 'contact_us.png';
  // String get contactUs =>
  //     // ignore: prefer_interpolation_to_compose_strings
  //     AppConstants.homepageImages + 'contact_us.png';
  // String get contactUs =>
  //     // ignore: prefer_interpolation_to_compose_strings
  //     AppConstants.homepageImages + 'contact_us.png';
}
