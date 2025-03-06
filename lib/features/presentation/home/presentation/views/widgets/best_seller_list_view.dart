import 'package:bookly_app/features/presentation/home/presentation/manager/cubits/newest_best_seller_cubit/newest_books_cubit.dart';
import 'package:bookly_app/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/utils/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel:state.books[index],),
              );
            },);
        }else if(state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);

        }else{
          return CustomLoadingWidget();
        }
      },
    );
  }
}
