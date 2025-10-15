
import 'package:flutter/material.dart';

import '../../core/constans/app_colors.dart';
import '../../core/utils/app_text_styles.dart';
import 'custom_text.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.text, required this.onPressed, this.circular = 16});
  final String text;
  final VoidCallback onPressed;
  final double circular;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.main,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(circular),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: CustomText(
                      text: text,
                      textStyle: AppTextStyle.style18w600(
                        context,
                      ).copyWith(color: AppColors.white, fontFamily: 'Inter'),
                    )
      ),
    );
  }
}
