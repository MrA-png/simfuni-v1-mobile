import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simfuni_v1/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'Simfuni',
              style: GoogleFonts.inriaSans(
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                  icon: 'assets/icons/icon_home.png',
                  iconSize: 30.0,
                  // ignore: avoid_print
                  onPressed: () => print('Home')),
              CircleButton(
                  icon: 'assets/icons/icon_searc.png',
                  iconSize: 30.0,
                  // ignore: avoid_print
                  onPressed: () => print('Search')),
              CircleButton(
                  icon: 'assets/icons/icon_msg.png',
                  iconSize: 30.0,
                  // ignore: avoid_print
                  onPressed: () => print('Message')),
              CircleButton(
                  icon: 'assets/icons/icon_list_menu.png',
                  iconSize: 30.0,
                  // ignore: avoid_print
                  onPressed: () => print('List')),
            ],
          ),
          const SliverToBoxAdapter(
            child: CreatePostContainer(),
          )
        ],
      ),
    );
  }
}
