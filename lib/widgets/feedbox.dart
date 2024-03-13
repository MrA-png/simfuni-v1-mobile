import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBox extends StatelessWidget {
  const FeedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profil.png'),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: GoogleFonts.inriaSans(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '2 hours ago',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: GoogleFonts.inter(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          Image.asset(
            'assets/images/profil.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          const SizedBox(height: 8),
          Text(
            'Harga Perkiraan Sendiri (HPS)',
            style: GoogleFonts.inter(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '15.000.000.00,-',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
            ),
          ),
          // Row(
          //   children: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(Icons.favorite_border),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(Icons.comment_outlined),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(Icons.share),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
