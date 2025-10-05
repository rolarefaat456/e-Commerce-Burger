
import 'package:flutter/material.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../manager/cart_item_changing_cubit.dart';

class IconBtnCart extends StatelessWidget {
  const IconBtnCart({
    super.key,
    required this.cubit,
    required this.icon,
    required this.onPressed,
  });

  final CartItemChangingCubit cubit;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.main,
      borderRadius: BorderRadius.circular(12),
      child: IconButton(
        icon: Icon(icon, color: AppColors.white),
        onPressed: onPressed,
      ),
    );
  }
}
