import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simfuni_v1/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white, // Ubah warna status bar menjadi putih
      statusBarIconBrightness:
          Brightness.dark, // Ubah ikon status bar menjadi gelap
    ));
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 248, 250),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            sliver: SliverAppBar(
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
              pinned: true,
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
          ),
          // SliverToBoxAdapter(
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 12.0),
          //     child: const Divider(
          //       color: Colors.grey,
          //       thickness: 1,
          //       indent: 10,
          //       endIndent: 10,
          //     ),
          //   ),
          // ),
          const SliverToBoxAdapter(
            child: CreatePostContainer(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const FeedBox();
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
