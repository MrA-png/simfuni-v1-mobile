import 'package:flutter/material.dart';
import 'package:simfuni_v1/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simfuni',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}