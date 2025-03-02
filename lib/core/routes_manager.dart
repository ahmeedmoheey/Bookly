import 'package:bookly_app/features/presentation/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/presentation/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:go_router/go_router.dart';

import '../features/presentation/splash/splash_view.dart';

class RoutesManager{
   static  final router = GoRouter(
      routes: [
         GoRoute(
            path: '/',
            builder: (context, state) =>  const SplashView(),
         ),
         GoRoute(
            path: '/homeView',
            builder: (context, state) =>  const HomeView(),
         ),
         GoRoute(
            path: '/booksDetails',
            builder: (context, state) =>  const BookDetailsViewBody(),
         ),

      ],
   );
}