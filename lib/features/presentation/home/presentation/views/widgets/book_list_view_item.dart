import 'package:bookly_app/core/images_manager.dart';
import 'package:bookly_app/core/routes_manager.dart';
import 'package:bookly_app/features/presentation/home/data/models/book_model.dart';
import 'package:bookly_app/features/presentation/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/constant_manager.dart';
import '../../../../../../utils/app_styles/app_styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RoutesManager.kBookDetails,extra: bookModel)
        ;
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child:  Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 1,
                        style: AppStyles.textStyle20.copyWith(fontFamily: ConstantManager.kGtSectraFine),
                      )
                  ),
                  const SizedBox(height: 3,),
                   Text(bookModel.volumeInfo.authors![0] ,style:  AppStyles.textStyle14,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('free',style: AppStyles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                       const Spacer(),
                       BookRating(rating:  bookModel.volumeInfo.averageRating?.round() ?? 0,
                       count:bookModel.volumeInfo.ratingsCount ?? 0 ,)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

