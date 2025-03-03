import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/colors_manager.dart';
import '../../../../../../utils/app_styles/app_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment.center});
 final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment:mainAxisAlignment,
      children: [
        const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: ColorsManager.starColor,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: AppStyles.textStyle16,
        ),
        const SizedBox(
          width: 5.3,
        ),
        Opacity(
          opacity: .5,
          child:    Text(
            '(245)',
            style: AppStyles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
