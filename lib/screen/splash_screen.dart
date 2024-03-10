import 'package:flutter/material.dart';
import 'package:simfuni_v1/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false);
    });

    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image(
          image: AssetImage('assets/images/logo-simfuni.png'),
        ),
      ),
    );
  }
}
