import 'package:bookly_app/core/api_server/api_server.dart';
import 'package:bookly_app/core/colors_manager.dart';
import 'package:bookly_app/core/routes_manager.dart';
import 'package:bookly_app/features/presentation/home/data/models/book_model.dart';
import 'package:bookly_app/features/presentation/home/data/repos/home_rep_impl.dart';
import 'package:bookly_app/features/presentation/home/presentation/manager/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/utils/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/presentation/home/presentation/manager/cubits/newest_best_seller_cubit/newest_books_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
               getIt.get<HomeRepoImpl>()
                )),
        BlocProvider(
            create: (context) => NewestBooksCubit(
               getIt.get<HomeRepoImpl>()
                )),

      ],
      child: MaterialApp.router(
        routerConfig: RoutesManager.router,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: ColorsManager.backGround),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
