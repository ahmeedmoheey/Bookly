import 'package:bookly_app/core/constant_manager.dart';
import 'package:bookly_app/core/images_manager.dart';
import 'package:bookly_app/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        CustomAppBar(),
        FeaturedBooksListView(),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Best Seller ',
          style: AppStyles.textStyle18,
        ),
        const SizedBox(
          height: 20,
        ),
        BestSellerItemView()
      ]),
    );
  }
}

