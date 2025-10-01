
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../data/models/category_model.dart';
import '../../manager/animated_category_cubit.dart';

class CategoreisListGenerate extends StatelessWidget {
  const CategoreisListGenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return BlocBuilder<AnimatedCategoryCubit, AnimatedCategoryState>(
            builder: (context, state) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => context
                    .read<AnimatedCategoryCubit>()
                    .isSelectedCategory(index: index),
                child: AnimatedContainer(
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: state.selectedIndex == index
                        ? AppColors.main
                        : AppColors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  duration: Duration(milliseconds: 300),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                    child: CustomText(
                      text: categories[index],
                      textStyle: AppTextStyle.style16w400(context).copyWith(
                        color: state.selectedIndex == index
                            ? AppColors.white
                            : AppColors.backRed,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
