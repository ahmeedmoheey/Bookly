import 'package:bookly_app/utils/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
 final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: AppStyles.textStyle18,);
  }
}
