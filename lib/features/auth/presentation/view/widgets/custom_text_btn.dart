
import 'package:flutter/material.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../shared/widgets/custom_text.dart';

class CustomTextBtn extends StatelessWidget {
  const CustomTextBtn({
    super.key, required this.text, required this.onPresed,
  });
  final String text;
  final VoidCallback onPresed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPresed,
      child: CustomText(
        text: text,
        textStyle: AppTextStyle.style12w400(
          context,
        ).copyWith(color: AppColors.white),
      ),
    );
  }
}
