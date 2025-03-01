import 'package:bookly_app/core/images_manager.dart';
import 'package:bookly_app/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment:   CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
           const SizedBox(height: 50,),
          Text('Best Seller ', style: AppStyles.textStyle18,),
          SizedBox(height: 4,),
          BestSellerItemView()
        ]

      ),
    );
  }

}
class BestSellerItemView extends StatelessWidget {
  const BestSellerItemView ({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125 ,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration:   BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image: const DecorationImage(image: AssetImage(AssetsManager.testImage,),fit: BoxFit.fill)
          ),
        ),
      )
        ],
      ),
    );

}}





