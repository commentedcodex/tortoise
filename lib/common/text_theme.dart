import 'package:flutter/material.dart';

class AppTypography {
  static const String defaultFont = 'Inter';
  static const String hafferFont = 'Haffer SQ XH';

  static final TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: hafferFont,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 42 / 20,
      letterSpacing: 0,
    ), // Hero headers

    headlineMedium: TextStyle(
      fontFamily: hafferFont,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 22 / 18,
      letterSpacing: 0,
    ), // Section titles

    headlineSmall: TextStyle(
      fontFamily: hafferFont,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 26 / 16,
      letterSpacing: 0,
    ), // Subsection headers

    titleLarge: TextStyle(
      fontFamily: hafferFont,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 22 / 16,
      letterSpacing: 0,
    ), // Card/list headings

    titleMedium: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0,
    ), // Bold body

    titleSmall: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 18 / 13,
      letterSpacing: 0,
    ), // Bold captions

    bodyLarge: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 20 / 16,
      letterSpacing: 0,
    ), // Default body

    bodyMedium: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0,
    ), // Secondary body

    bodySmall: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      height: 22 / 13,
      letterSpacing: 0,
    ), // Supporting text

    labelLarge: TextStyle(
      fontFamily: hafferFont,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 1.0,
      letterSpacing: 0.08 * 12, // 8% tracking
    ), // Buttons, tags

    labelMedium: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 20 / 12,
      letterSpacing: 0,
    ), // Metadata text

    labelSmall: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 18 / 12,
      letterSpacing: 0,
    ), // Tiny captions
  );
}
