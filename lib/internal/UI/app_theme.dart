import 'package:flutter/material.dart';
import 'package:test_mad_soft/internal/UI/app_colors.dart';
import 'package:test_mad_soft/internal/UI/app_text_style.dart';

final appTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.hexFFFFFF,
    surfaceTintColor: AppColors.hexFFFFFF,
    shadowColor: AppColors.hex6B6C6C,
    titleTextStyle: AppTextStyles.s16w500h1B1B1F,
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: AppColors.hexFFFFFF,
    surfaceTintColor: AppColors.hexFFFFFF,
    shadowColor: AppColors.hex6B6C6C,
  ),
);
