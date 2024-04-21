import 'package:flutter/material.dart';
import 'package:test_mad_soft/config/UI/app_colors.dart';
import 'package:test_mad_soft/config/UI/app_text_style.dart';

ThemeData get appTheme => ThemeData(
      appBarTheme: _appBarTheme,
      navigationBarTheme: _navigationBarThemeData,
    );

AppBarTheme get _appBarTheme => AppBarTheme(
      backgroundColor: AppColors.hexFFFFFF,
      surfaceTintColor: AppColors.hexFFFFFF,
      shadowColor: AppColors.hex6B6C6C,
      titleTextStyle: AppTextStyles.s16w500h1B1B1F,
    );

NavigationBarThemeData get _navigationBarThemeData => NavigationBarThemeData(
      backgroundColor: AppColors.hexFFFFFF,
      surfaceTintColor: AppColors.hexFFFFFF,
      shadowColor: AppColors.hex6B6C6C,
    );
