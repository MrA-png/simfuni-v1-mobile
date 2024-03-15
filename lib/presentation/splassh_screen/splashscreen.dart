import 'package:flutter/material.dart';
import 'package:simfuni_v1/presentation/home_screen/home_screen.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: theme.colorScheme.onPrimary,
//         body: Container(
//           width: double.maxFinite,
//           padding: EdgeInsets.symmetric(horizontal: 145.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 5.v),
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: "Simfuni",
//                       style: theme.textTheme.displayLarge,
//                     ),
//                     TextSpan(
//                       text: ".",
//                       style: CustomTextStyles.lalezarff156cf7,
//                     ),
//                   ],
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
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
