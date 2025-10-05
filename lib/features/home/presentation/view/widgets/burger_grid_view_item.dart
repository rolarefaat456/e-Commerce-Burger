import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/constans/routes.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text.dart';

class BurgerGridViewItem extends StatelessWidget {
  const BurgerGridViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.rate,
    required this.icon,
  });
  final String image, title, subTitle, rate;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(Routes.productDetailsRoute),
      title: Image.asset(image),
      subtitle: Column(
        children: [
          CustomText(
            text: title,
            textStyle: AppTextStyle.style16w500(
              context,
            ).copyWith(color: AppColors.darkRed),
          ),
          CustomText(
            text: subTitle,
            textStyle: AppTextStyle.style16w400(
              context,
            ).copyWith(color: AppColors.darkRed),
          ),
          Row(
            children: [
              Icon(icon, color: Colors.yellow, size: 20),
              Gap(8),
              CustomText(
                text: rate,
                textStyle: AppTextStyle.style12w400(
                  context,
                ).copyWith(color: AppColors.darkRed),
              ),
              Spacer(),
              Icon(CupertinoIcons.heart_fill, color: AppColors.main),
            ],
          ),
        ],
      ),
    );
  }
}
