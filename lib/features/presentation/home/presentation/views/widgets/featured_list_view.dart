import 'package:bookly_app/features/presentation/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_details_view_body.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: InkWell(
        onTap: (){
          GoRouter.of(context).push('/booksDetails');
        },
        child: ListView.builder(
            scrollDirection:  Axis.horizontal,
            itemBuilder: (context, index){
              return  const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8),
                child:   FeaturedListViewItem(),
              );
            }),
      ),
    );
  }
}
