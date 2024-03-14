import 'package:flutter/material.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/android_large_one_screen/android_large_one_screen.dart';
import '../presentation/detail_kebutuhan_tab_container_screen/detail_kebutuhan_tab_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String detailKebutuhanPage = '/detail_kebutuhan_page';

  static const String detailKebutuhanTabContainerScreen =
      '/detail_kebutuhan_tab_container_screen';

  static const String detailKebutuhanOnePage = '/detail_kebutuhan_one_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    detailKebutuhanTabContainerScreen: (context) =>
        DetailKebutuhanTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
