import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarLeadingImage extends StatelessWidget {
  const AppbarLeadingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  final String? imagePath;
  final EdgeInsetsGeometry? margin;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? () => onTap!() : null,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 40.adaptSize,
          width: 40.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
