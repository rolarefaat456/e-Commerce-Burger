
import 'package:flutter/material.dart';

import '../../core/constans/app_colors.dart';
import '../../core/utils/app_text_styles.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key, this.textColor = AppColors.white,
  });
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text('Hungry?', style: AppTextStyle.style60w400(context).copyWith(color: textColor));
  }
}
