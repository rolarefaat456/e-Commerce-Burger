
import 'package:flutter/material.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text.dart';

class CartImageWithTitle extends StatelessWidget {
  const CartImageWithTitle({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(image),
        CustomText(text: title, textStyle: AppTextStyle.style16w600(context)),
        CustomText(
          text: subTitle,
          textStyle: AppTextStyle.style16w400(
            context,
          ).copyWith(color: AppColors.darkRed, fontFamily: 'Roboto'),
        ),
      ],
    );
  }
}
