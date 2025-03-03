import 'package:bookly_app/core/images_manager.dart';
import 'package:bookly_app/core/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/constant_manager.dart';
import '../../../../../../utils/app_styles/app_styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RoutesManager.kBookDetails);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                    image: const DecorationImage(
                        image: AssetImage(
                          AssetsManager.testImage,
                        ),
                        fit: BoxFit.fill)),
              ),
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
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        style: AppStyles.textStyle20.copyWith(fontFamily: ConstantManager.kGtSectraFine),
                      )
                  ),
                  const SizedBox(height: 3,),
                  const Text('J.K. Rowling' ,style:  AppStyles.textStyle14,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('19.99 €',style: AppStyles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                       const Spacer(),
                   const    BookRating()
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

