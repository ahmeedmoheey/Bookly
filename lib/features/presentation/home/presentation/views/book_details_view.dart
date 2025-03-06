import 'package:bookly_app/features/presentation/home/data/models/book_model.dart';
import 'package:bookly_app/features/presentation/home/presentation/views/widgets/books_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BooksDetailsViewBody(bookModel:bookModel ,)),
    );
  }
}
