import 'package:flutter/material.dart';
import 'package:tortoise_assignment/common/styles/app_colors.dart';

class AppTypography {
  static const String defaultFont = 'Inter';

  static final TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 42 / 20,
      letterSpacing: 0,
      color: AppColors.black,
    ),

    headlineMedium: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 22 / 18,
      letterSpacing: 0,
      color: AppColors.black,
    ),
    headlineSmall: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 26 / 16,
      letterSpacing: 0,
      color: AppColors.black,
    ),

    titleLarge: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 22 / 16,
      letterSpacing: 0,
      color: AppColors.black,
    ), // Card/list headings

    titleMedium: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0,
      color: AppColors.black,
    ),

    titleSmall: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 18 / 13,
      letterSpacing: 0,
      color: AppColors.black,
    ),

    bodyLarge: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 20 / 16,
      letterSpacing: 0,
      color: AppColors.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0,
      color: AppColors.black,
    ),
    bodySmall: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      height: 22 / 13,
      letterSpacing: 0,
      color: AppColors.black,
    ),
    labelLarge: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 1.0,
      letterSpacing: 0.08 * 12,
      color: AppColors.black,
    ),
    labelMedium: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 20 / 12,
      letterSpacing: 0,
      color: AppColors.black,
    ),
    labelSmall: TextStyle(
      fontFamily: defaultFont,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 18 / 12,
      letterSpacing: 0,
      color: AppColors.black,
    ),
  );
}
