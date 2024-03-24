import 'package:flutter/material.dart';
import 'package:simfuni_v1/core/utils/size_utils.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [newTheme].
  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          shadowColor: appTheme.black900.withOpacity(0.2),
          elevation: 2,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray400,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: const Color(0XFFFFFFFF),
          fontSize: 64.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Istok Web',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.greenA700B2,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray80099,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Inria Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.8),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: const Color(0XCC000000),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF156CF7),
    primaryContainer: Color(0XFF222222),
    secondaryContainer: Color(0XFF6979F8),

    // Error colors
    errorContainer: Color(0XFF595959),

    // On colors(text colors)
    onPrimary: Color(0XFF121212),
    onPrimaryContainer: Color(0X2660F85D),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => const Color(0XFF000000);

  // BlueGray
  Color get blue100 => const Color(0XFFD0E2FD);
  Color get blueGray100 => const Color(0XFFD5D8E2);
  Color get blueGray10001 => const Color(0XFFD9D9D9);
  Color get blueGray400 => const Color(0XFF888B90);
  Color get blueGray500 => const Color(0XFF667091);
  Color get blueGray900 => const Color(0XFF282A37);
  Color get blueGray90001 => const Color(0XFF33363F);
  Color get blueGray10004 => const Color(0XFFCCD2DD);
  Color get blue200 => const Color(0XFF9EC2FD);
  Color get blue50 => const Color(0XFFEAF2FF);

  // Gray
  Color get gray100 => const Color(0XFFF1F4F5);
  Color get gray10001 => const Color(0XFFF6F7F9);
  Color get gray300 => const Color(0XFFE4E4E4);
  Color get gray400 => const Color(0XFFBDBDBD);
  Color get gray50 => const Color(0XFFF5F8FA);
  Color get gray800 => const Color(0XFF454545);
  Color get gray80099 => const Color(0X99393E46);
  Color get gray80001 => const Color(0XFF3B3B3B);
  Color get gray500 => const Color(0XFFA9A9A9);
  Color get gray200 => const Color(0XFFEDEDED);

  // GreenAB
  Color get greenA700B2 => const Color(0XB21CDA18);

  // Orange
  Color get orangeA100 => const Color(0XFFFFD369);

  // Red
  Color get redA200 => const Color(0XFFFF655B);

  // White
  Color get whiteA700 => const Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
