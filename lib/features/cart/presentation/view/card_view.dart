import 'package:flutter/material.dart';
import '../../../../core/constans/routes.dart';

import '../../../../core/constans/app_colors.dart';
import '../../../../shared/widgets/custom_end.dart';
import 'widgets/cart_list_view.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: Column(
        children: [
          Expanded(child: CartListView()),
          Material(
            color: AppColors.white,
            child: CustomEnd(
              title: 'Total',
              text: 'Checkout',
              price: '\$99.19',
              onPressed: () =>
                  Navigator.of(context).pushNamed(Routes.checkoutRoute),
            ),
          ),
        ],
      ),
    );
  }
}
