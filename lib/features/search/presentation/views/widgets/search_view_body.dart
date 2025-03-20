import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result-list_view.dart';
import 'package:bookly_app/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/home/data/models/book_model.dart';
import '../repos/search_rep_impl.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  _SearchViewBodyState createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<BookModel> searchResults = [];
  final SearchRepository searchRepo = SearchRepository();

  void searchBooks(String query) async {
    if (query.isNotEmpty) {
      List<BookModel> results = await searchRepo.fetchBooks(query);
      setState(() {
        searchResults = results;
      });
    } else {
      setState(() {
        searchResults = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomSearchTextField(
            onChanged: searchBooks,
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Search Result', style: AppStyles.textStyle18),
          ),
          SizedBox(height: 20),
          Expanded(
            child: searchResults.isNotEmpty
                ? Expanded(
              child: SearchResultListView(books: searchResults),
            )

                : Center(child: Text("No results found")),
          ),
        ],
      ),
    );
  }
}