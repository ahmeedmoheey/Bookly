import 'package:bookly_app/features/presentation/home/data/repos/home_rep_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../core/api_server/api_server.dart';

final getIt = GetIt.instance;
void setup(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
    getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      getIt.get<ApiService>(),
    ));

}