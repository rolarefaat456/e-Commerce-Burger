import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text.dart';
import 'header_icon_widget.dart';
import 'header_slider_widget.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset(Assets.imagesBurgerMfto7)),
        Gap(24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Customize ',
                      style: AppTextStyle.style16w800(context),
                    ),
                    TextSpan(
                      text: 'Your Burger to Your Tastes. Ultimate Experience',
                      style: AppTextStyle.style16w400(context).copyWith(
                        color: AppColors.darkRed,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              Gap(16),
              CustomText(
                text: 'Spicy',
                textStyle: AppTextStyle.style16w500(
                  context,
                ).copyWith(color: AppColors.darkRed, fontFamily: 'Roboto'),
              ),
              HeaderSliderWidget(),
              HeaderIconsWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
