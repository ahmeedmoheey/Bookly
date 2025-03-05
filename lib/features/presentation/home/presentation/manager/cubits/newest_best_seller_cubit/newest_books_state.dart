part of 'newest_books_cubit.dart';

abstract  class NewestBooksState  extends Equatable{
const NewestBooksState();
  @override
  List<Object?> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}
 class NewestBooksLoading extends NewestBooksState {}
 class NewestBooksSuccess extends NewestBooksState {
   const   NewestBooksSuccess(this.books);
  final List<BookModel> books;
}
final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}
