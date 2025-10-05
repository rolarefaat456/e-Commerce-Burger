import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../manager/cart_item_changing_cubit.dart';
import 'icon_btn_cart.dart';

class CartItemCountChanging extends StatelessWidget {
  const CartItemCountChanging({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        BlocProvider(
          create: (context) => CartItemChangingCubit(),
          child: BlocBuilder<CartItemChangingCubit, CartItemChangingState>(
            builder: (context, state) {
              final cubit = context.read<CartItemChangingCubit>();
              return SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBtnCart(
                      cubit: cubit,
                      icon: Icons.remove,
                      onPressed: () => cubit.removingItems(),
                    ),
                    CustomText(
                      text: '${cubit.count}',
                      textStyle: AppTextStyle.style18w500(context),
                    ),
                    IconBtnCart(
                      cubit: cubit,
                      icon: Icons.add,
                      onPressed: () => cubit.addingItems(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        CustomBtn(text: 'Remove', onPressed: () {}, circular: 50),
      ],
    );
  }
}
