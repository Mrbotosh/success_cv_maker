// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:success_cv_maker/core/theme/app_colors.dart';

enum AppTheme { PRIMARY_THEME }

final appThemeData = {
  AppTheme.PRIMARY_THEME: ThemeData(
    primaryColor: AppColors.green,
    backgroundColor: AppColors.green,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.green),
    scaffoldBackgroundColor: AppColors.green,
  ),
};
