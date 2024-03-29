import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
    this.fontSize, required TextStyle style,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   onTap!.call();
      // },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
