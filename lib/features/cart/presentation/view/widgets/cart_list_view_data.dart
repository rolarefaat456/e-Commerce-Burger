import 'package:flutter/material.dart';

import '../../../../../core/constans/app_colors.dart';
import 'cart_image_with_title.dart';
import 'cart_item_count_changing.dart';

class CartListViewDate extends StatelessWidget {
  const CartListViewDate({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: CartImageWithTitle(
                image: image,
                title: title,
                subTitle: subTitle,
              ),
            ),
            Expanded(child: CartItemCountChanging()),
          ],
        ),
      ),
    );
  }
}
