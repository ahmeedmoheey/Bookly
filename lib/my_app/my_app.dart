import 'package:bookly_app/core/routes_manager.dart';
import 'package:bookly_app/utils/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../features/presentation/splash/splash_view.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
      theme:AppTheme.dark,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.home :(context)=> SplashView()
      },
      initialRoute: RoutesManager.home,
    );
  }
}
