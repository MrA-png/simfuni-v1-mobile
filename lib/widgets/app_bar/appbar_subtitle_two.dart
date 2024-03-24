import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleTwo extends StatelessWidget {
  const AppbarSubtitleTwo({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
    this.fontSize, // Tambahkan parameter fontSize
  }) : super(
          key: key,
        );

  final String text; // Jadikan variabel text menjadi final
  final EdgeInsetsGeometry? margin;
  final Function? onTap;
  final double? fontSize; // Deklarasikan variabel fontSize

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.labelMediumInter.copyWith(
            color: appTheme.black900.withOpacity(0.6),
            fontSize: fontSize, // Integrasikan nilai fontSize ke dalam gaya teks
          ),
        ),
      ),
    );
  }
}
