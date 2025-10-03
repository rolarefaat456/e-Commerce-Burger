import 'package:flutter/material.dart';
import '../../../../../core/constans/app_colors.dart';
import '../../../data/models/burger_model.dart';
import 'Burger_grid_view_item.dart';

class BurgersSliverGrid extends StatelessWidget {
  const BurgersSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(childCount: burgerList.length, (
        context,
        index,
      ) {
        return Card(
          color: AppColors.white,
          child: BurgerGridViewItem(
            image: burgerList[index].image,
            title: burgerList[index].title,
            subTitle: burgerList[index].subTitle,
            rate: burgerList[index].rate,
            icon: burgerList[index].icon,
          ),
        );
      }),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1 / 1.4,
      ),
    );
  }
}
