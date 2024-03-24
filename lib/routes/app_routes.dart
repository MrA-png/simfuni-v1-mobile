import 'package:flutter/material.dart';
import 'package:simfuni_v1/screen/splassh_screen/splashscreen.dart';
import 'package:simfuni_v1/screen/step_1_form_apply_screen/step_1_form_apply_screen.dart';
import 'package:simfuni_v1/screen/step_2_form_permintaan_one_screen/step_2_form_permintaan_one_screen.dart';
import '../screen/home_screen/home_screen.dart';
import '../screen/detail_kebutuhan_tab_container_screen/detail_kebutuhan_tab_container_screen.dart';
import '../screen/app_navigation_screen/app_navigation_screen.dart';
import '../screen/pengajuan_screen/pengajuan_screen.dart';


class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String splashscreen = '/splash_screen';

  static const String detailKebutuhanPage = '/detail_kebutuhan_page';

  static const String detailKebutuhanTabContainerScreen =
      '/detail_kebutuhan_tab_container_screen';

  static const String pengajuanScreen = '/pengajuan_screen';

  static const String detailKebutuhanOnePage = '/detail_kebutuhan_one_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String step1FormApplyScreen = '/step_1_form_apply_screen';

  static const String step1FormPenawaranScreen =
      '/step_1_form_penawaran_screen';

  static const String step2FormPenawaranScreen =
      '/step_2_form_penawaran_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    splashscreen: (context) => const SplashScreen(),
    detailKebutuhanTabContainerScreen: (context) =>
        const DetailKebutuhanTabContainerScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    step1FormApplyScreen: (context) => Step1FormApplyScreen(),
    step2FormPenawaranScreen: (context) => const Step2FormPermintaanOneScreen(),
    pengajuanScreen: (context) => const PengajuanScreen(),
    // pestep3FormPenawaranScreen: (context) => Pestep3FormPenawaranScreen(),
    // step1FormApplyScreen: (context) => Step1FormApplyScreen(),
    // step2FormPermintaanOneScreen: (context) => Step2FormPermintaanOneScreen(),
    // appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
