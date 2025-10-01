import 'package:flutter/material.dart';
import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/logo_widget.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogoWidget(textColor: AppColors.main),
            CustomText(
              text: 'Hello Rich Sonic',
              textStyle: AppTextStyle.style12w400(
                context,
              ).copyWith(color: Colors.grey),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(backgroundImage: AssetImage(Assets.imagesSonicFreind)),
      ],
    );
  }
}
