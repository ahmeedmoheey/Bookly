import 'package:bookly_app/core/colors_manager.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static final  ThemeData dark = ThemeData(
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      color: ColorsManager.black,
      shadowColor: Colors.transparent
    ),
    scaffoldBackgroundColor: ColorsManager.black,
  );
}