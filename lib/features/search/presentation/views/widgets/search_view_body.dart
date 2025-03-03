import 'package:bookly_app/features/search/presentation/views/widgets/search_result-list_view.dart';
import 'package:bookly_app/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/home/presentation/views/widgets/best_seller_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
         const  CustomSearchTextField(),
         const SizedBox(height: 16,),
          Text('Search Result',style: AppStyles.textStyle18,),
         const  SizedBox(height: 16,),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

