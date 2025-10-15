
  import 'package:flutter/material.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../shared/widgets/custom_btn.dart';
import '../../../../../shared/widgets/custom_text.dart';

Future<dynamic> showSuccess(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.white,
        title: Icon(
          Icons.check_circle_rounded,
          color: AppColors.main,
          size: 120,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            CustomText(
              text: 'Success !',
              textStyle: AppTextStyle.style30w500(context),
            ),
            CustomText(
              text:
                  'Your payment was successful.\nA receipt for this purchase has been sent to your email.',
              textStyle: AppTextStyle.style14w400(context),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          CustomBtn(text: 'Back', onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }