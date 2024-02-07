import '../config/constants/app_text_constants.dart';

extension AppAssets on String {
  // ignore: prefer_interpolation_to_compose_strings
  String get whiteLogo => AppConstants.logoAssetsPath + 'logo-white.png';
  // ignore: prefer_interpolation_to_compose_strings
  String get splashLogo => AppConstants.logoAssetsPath + 'splash-logo.png';
  String get newsPhoto => AppConstants.homepageImages + 'news.png';
  String get newsPhoto2 => AppConstants.homepageImages + 'news2.png';

  /////[ICONS PATH]
  ///
  String get iconDigital =>
      AppConstants.iconAssetsPath + 'digital_solutions.png';
  String get iconNetwork => AppConstants.iconAssetsPath + 'networking.png';
  String get iconScience => AppConstants.iconAssetsPath + 'science.png';
  String get iconSupport => AppConstants.iconAssetsPath + 'support.png';
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
