import 'package:bookly_app/features/presentation/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
               const  BooksDetailsSection(),
                const   Expanded(child:  SizedBox(height: 50,)),
              const  SimilarBooksSection(),
                const SizedBox(height: 40,)
              ],
            ),
          )
          ,
        )
      ],
    );

  }
}


