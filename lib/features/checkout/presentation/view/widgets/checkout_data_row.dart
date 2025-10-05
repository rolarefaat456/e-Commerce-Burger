
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text.dart';

class CheckoutDataRow extends StatelessWidget {
  const CheckoutDataRow({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleTextStyle,
    this.subTitleTextStyle,
  });
  final String title, subTitle;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            textStyle: titleTextStyle ?? AppTextStyle.style18w400(context),
          ),
          CustomText(
            text: subTitle,
            textStyle: subTitleTextStyle ?? AppTextStyle.style18w400(context),
          ),
        ],
      ),
    );
  }
}
