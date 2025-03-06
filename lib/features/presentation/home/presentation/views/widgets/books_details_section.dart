import 'package:bookly_app/features/presentation/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/app_styles/app_styles.dart';
import 'book_rating.dart';
import 'box_action.dart';
import 'custom_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
          bookModel.volumeInfo.title!,
          style: AppStyles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?[0]??'',
            style: AppStyles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
         BookRating(
          rating: bookModel.volumeInfo.averageRating?.round()??0,
          count:bookModel.volumeInfo.ratingsCount?.round()??0 ,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37,),
        const   BoxAction(),

      ],
    );
  }
}
