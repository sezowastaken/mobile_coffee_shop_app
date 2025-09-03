import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData dark() {
    final base = FlexThemeData.dark(
      colors: const FlexSchemeColor(
        primary: kPrimary,
        primaryContainer: kCard1,
        secondary: kCard2,
        secondaryContainer: kCard1,
        tertiary: kCard2,
        tertiaryContainer: kCard1,
      ),
      scaffoldBackground: kBg,
      surface: kBgAlt,
      useMaterial3: true,
    );
    return base.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(base.textTheme).apply(
        bodyColor: kInk,
        displayColor: kInk,
      ),
    );
  }
}
