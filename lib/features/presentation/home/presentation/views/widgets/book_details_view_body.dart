import 'package:bookly_app/features/presentation/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 106 ),
            child: FeaturedListViewItem(),
          )
        ],
      ),
    );
  }
}



