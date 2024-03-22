import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/utils/size_utils.dart';
import 'package:simfuni_v1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallIstokWebGray800 =>
      theme.textTheme.bodySmall!.istokWeb.copyWith(
          color: appTheme.gray800,
          fontSize: 12.fSize,
          fontWeight: FontWeight.normal);
  static get bodySmallPoppins66000000 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: const Color(0X66000000),
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack9008 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray80099 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray80099,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsff000000 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: const Color(0XFF000000),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  // Display text style
  static get displayLargeLalezarWhiteA700 =>
      theme.textTheme.displayLarge!.lalezar.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeGray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterBluegray900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14.fSize,
      );
  static get labelLargePoppinsWhiteA700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsff000000 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: const Color(0XFF000000),
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsff000000SemiBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: const Color(0XFF000000),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack90011 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 11.fSize,
      );
  static get labelMediumBlack900Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOrangeA100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.orangeA100,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelSmall7f000000 => theme.textTheme.labelSmall!.copyWith(
        color: const Color(0X7F000000),
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallBluegray400 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 10.fSize,
      );
  static get labelSmallb2000000 => theme.textTheme.labelSmall!.copyWith(
        color: const Color(0XB2000000),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlue100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blue100,
      );
  static get labelLargeIstokWebGray500 =>
      theme.textTheme.labelLarge!.istokWeb.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.8),
      );
  static get titleSmallInterBluegray10004 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray10004,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelSmallff888b90 => theme.textTheme.labelSmall!.copyWith(
        color: const Color(0XFF888B90),
        fontSize: 9.fSize,
      );
  static get labelMediumInter => theme.textTheme.labelMedium!.inter;
  static get titleSmallInter => theme.textTheme.titleSmall!.inter;
  static get titleSmallInterBluegray10001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray10001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBluegray900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallInterff156cf7 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: Color(0XFF156CF7),
      );
  static get titleSmallInterff282a37 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: Color(0XFF282A37),
      );
  static get titleSmallBluegray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray10001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontWeight: FontWeight.w500,
      );

  // Lalezarff text style
  static get lalezarff156cf7 => TextStyle(
        color: const Color(0XFF156CF7),
        fontSize: 96.fSize,
        fontWeight: FontWeight.w400,
      ).lalezar;
  // Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
}

extension on TextStyle {
  TextStyle get istokWeb {
    return copyWith(
      fontFamily: 'Istok Web',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get lalezar {
    return copyWith(
      fontFamily: 'Lalezar',
    );
  }
}
