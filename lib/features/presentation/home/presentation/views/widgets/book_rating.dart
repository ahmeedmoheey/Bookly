import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/colors_manager.dart';
import '../../../../../../utils/app_styles/app_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
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
        Text(
          '(245)',
          style: AppStyles.textStyle14.copyWith(color: const Color(0xFF707070)),
        )
      ],
    );
  }
}
