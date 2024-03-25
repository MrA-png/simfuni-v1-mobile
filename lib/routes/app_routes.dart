import 'package:flutter/material.dart';
import 'package:simfuni_v1/screen/splassh_screen/splashscreen.dart';
import 'package:simfuni_v1/screen/step_1_form_apply_screen/step_1_form_apply_screen.dart';
import 'package:simfuni_v1/screen/step_2_form_permintaan_one_screen/step_2_form_permintaan_one_screen.dart';
import '../screen/home_screen/home_screen.dart';
import '../screen/detail_kebutuhan_tab_container_screen/detail_kebutuhan_tab_container_screen.dart';
import '../screen/app_navigation_screen/app_navigation_screen.dart';
import '../screen/pengajuan_screen/pengajuan_screen.dart';
import '../screen/step_2_form_permintaan_screen/step_2_form_permintaan_screen.dart';
import '../screen/step_1_form_permintaan_screen/step_1_form_permintaan_screen.dart';
import '../screen/step_3_form_permintaan_screen/step_3_form_permintaan_screen.dart';
import '../screen/step_1_form_penawaran_screen/step_1_form_penawaran_screen.dart';
import '../screen/step_2_form_penawaran_screen/step_2_form_penawaran_screen.dart';
import '../screen/step_3_form_penawaran_screen/step_3_form_penawaran_screen.dart';


class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String splashscreen = '/splash_screen';

  static const String detailKebutuhanPage = '/detail_kebutuhan_page';

  static const String detailKebutuhanTabContainerScreen = '/detail_kebutuhan_tab_container_screen';

  static const String pengajuanScreen = '/pengajuan_screen';

  static const String detailKebutuhanOnePage = '/detail_kebutuhan_one_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String step1FormApplyScreen = '/step_1_form_apply_screen';

  static const String step2FormPermintaanScreen = '/step_2_form_permintaan_screen';

  static const String step1FormPermintaanScreen = '/step_1_form_permintaan_screen';

  static const String step2FormPermintaanOneScreen = '/step_2_form_permintaan_one_screen';

  static const String step3FormPermintaanScreen = '/step_3_form_permintaan_screen';

  static const String step1FormPenawaranScreen = '/step_1_form_penawaran_screen';

  static const String step2FormPenawaranScreen = '/step_2_form_penawaran_screen';

  static const String step3FormPenawaranScreen = '/step_3_form_penawaran_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    splashscreen: (context) => const SplashScreen(),
    detailKebutuhanTabContainerScreen: (context) =>
        const DetailKebutuhanTabContainerScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    step1FormApplyScreen: (context) => Step1FormApplyScreen(),
    step2FormPermintaanOneScreen: (context) => const Step2FormPermintaanOneScreen(),
    pengajuanScreen: (context) => const PengajuanScreen(),
    step2FormPermintaanScreen: (context) => const Step2FormPermintaanScreen(),
    step1FormPermintaanScreen: (context) => Step1FormPermintaanScreen(),
    step3FormPermintaanScreen: (context) => const Step3FormPermintaanScreen(),
    step1FormPenawaranScreen: (context) => Step1FormPenawaranScreen(),
    step2FormPenawaranScreen: (context) => const Step2FormPenawaranScreen(),
    step3FormPenawaranScreen: (context) => const Step3FormPenawaranScreen(),
  };
}
