import 'package:flutter/material.dart';
import 'package:kinema/src/ui/themes/colors.dart';

final ThemeData AppTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.colorPrimary,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
