import 'package:bookly_app/features/presentation/home/data/models/book_model.dart';
import 'package:bookly_app/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/utils/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../presentation/home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  final List <BookModel> books;

  const SearchResultListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Expanded(
              child: BookListViewItem(bookModel: books[index],)),
        );
      },);
  }
}
