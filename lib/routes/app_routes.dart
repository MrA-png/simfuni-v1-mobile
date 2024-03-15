import 'package:flutter/material.dart';
import 'package:simfuni_v1/presentation/splassh_screen/splashscreen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/detail_kebutuhan_tab_container_screen/detail_kebutuhan_tab_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String splashscreen = '/splash_screen';

  static const String detailKebutuhanPage = '/detail_kebutuhan_page';

  static const String detailKebutuhanTabContainerScreen =
      '/detail_kebutuhan_tab_container_screen';

  static const String detailKebutuhanOnePage = '/detail_kebutuhan_one_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    splashscreen: (context) => const SplashScreen(),
    detailKebutuhanTabContainerScreen: (context) =>
        const DetailKebutuhanTabContainerScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
