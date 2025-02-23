import 'package:bookly_app/core/colors_manager.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static final  ThemeData dark = ThemeData(
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      color: Color(0xFF100B20),
      shadowColor: Colors.transparent
    ),
    scaffoldBackgroundColor: Color(0xFF100B20),
  );
}