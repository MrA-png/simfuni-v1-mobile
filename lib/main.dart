import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  await Supabase.initialize(
      url: 'https://nlkupcbotsimitphodar.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5sa3VwY2JvdHNpbWl0cGhvZGFyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA1OTcyMjgsImV4cCI6MjAyNjE3MzIyOH0.3vPC-O-xO91ut5w-ntj0xnHWtsMzIWiLXzSBEGZDhjw');
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ThemeHelper().changeTheme('primary');
  initializeDateFormatting('id_ID', null).then((_) {
    runApp(MyApp());
  });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'Simfuni',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashscreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
