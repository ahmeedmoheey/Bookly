import 'package:bookly_app/core/colors_manager.dart';
import 'package:bookly_app/features/presentation/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/presentation/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/utils/app_styles/app_styles.dart';
import 'package:bookly_app/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'box_action.dart';
import 'custom_book_details_app_bar.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: AppStyles.textStyle30,
          ),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: AppStyles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        const SizedBox(height: 37,),
        const   BoxAction()
        ],
      ),
    );
  }
}

