import 'package:bookly_app/features/presentation/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../features/presentation/home/presentation/views/book_details_view.dart';
import '../features/presentation/splash/splash_view.dart';

class RoutesManager{
   static const kHomeView = '/homeView';
   static const kBookDetails = '/booksDetails';
   static const kSearchView = '/searchView';
   static  final router = GoRouter(
      routes: [
         GoRoute(
            path: '/',
            builder: (context, state) =>  const SplashView(),
         ),
         GoRoute(
            path: kHomeView,
            builder: (context, state) =>  const HomeView(),
         ),
         GoRoute(
            path: kBookDetails,
            builder: (context, state) =>  const BookDetailsView(),
         ),
         GoRoute(
            path: kSearchView,
            builder: (context, state) =>  const SearchView(),
         ),

      ],
   );
}