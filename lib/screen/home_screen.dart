import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Simfuni.",
        style: GoogleFonts.inriaSans(
          fontSize: 20,
          color: const Color(0xff000000),
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar, // Menggunakan variabel appBar
      body: const Center(
        child: Text(
          'Hello Selamat Datang',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
