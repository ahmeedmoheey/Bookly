import 'package:bookly_app/core/api_server/api_server.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/presentation/home/data/models/book_model.dart';
import 'package:bookly_app/features/presentation/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServer apiServer;

  HomeRepoImpl(this.apiServer);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServer.get(
          endPoint:
              'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data ['items']){
           books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if (e is DioException){
         return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
