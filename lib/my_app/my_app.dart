import 'package:bookly_app/core/colors_manager.dart';
import 'package:bookly_app/core/routes_manager.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutesManager.router ,
      theme:ThemeData.dark().copyWith(scaffoldBackgroundColor: ColorsManager.backGround),


      debugShowCheckedModeBanner: false,
    );
  }
}
