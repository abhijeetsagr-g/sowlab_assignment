import 'package:flutter/material.dart';
import 'package:sowlab_assignment/core/config/app_colors.dart';

abstract class AppTheme {
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primary,
    fontFamily: 'BeVietnamPro',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: AppColors.textSecondary, fontSize: 14),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, 62),
        shape: StadiumBorder(),
      ),
    ),
  );
}
