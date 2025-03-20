import 'package:bookly_app/features/presentation/home/data/models/book_model.dart';
import 'package:bookly_app/features/presentation/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes_manager.dart';
import '../../../../../../utils/app_styles/app_styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Text('You can also like',style: AppStyles.textStyle14.copyWith(
            fontWeight: FontWeight.w600
        ),),
          const SizedBox(height: 16,),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(RoutesManager.kBookDetails,extra: bookModel);

          },
            child:     SimilarBookListView()),
      ],
    );
  }
}
