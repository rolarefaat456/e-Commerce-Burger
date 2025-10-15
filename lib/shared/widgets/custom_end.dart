import 'package:flutter/material.dart';

import '../../core/utils/app_text_styles.dart';
import 'custom_btn.dart';
import 'custom_text.dart';

class CustomEnd extends StatelessWidget {
  const CustomEnd({
    super.key,
    required this.title,
    required this.text,
    required this.price,
    required this.onPressed,
  });
  final String title, text, price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomText(
        text: title,
        textStyle: AppTextStyle.style18w600(context),
      ),
      subtitle: CustomText(
        text: price,
        textStyle: AppTextStyle.style32w400(context),
      ),
      trailing: CustomBtn(text: text, onPressed: onPressed),
    );
  }
}
