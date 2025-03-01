import 'package:bookly_app/core/colors_manager.dart';
import 'package:bookly_app/core/routes_manager.dart';
import 'package:bookly_app/utils/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/presentation/splash/splash_view.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutesManager.router ,
      theme:ThemeData.dark().copyWith(scaffoldBackgroundColor: ColorsManager.black),
      debugShowCheckedModeBanner: false,
    );
  }
}
