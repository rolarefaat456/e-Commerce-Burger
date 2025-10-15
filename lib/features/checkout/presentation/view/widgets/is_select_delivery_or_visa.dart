import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../manager/is_cash_or_visa_cubit.dart';

class IsSelectDeliveryOrVisa extends StatelessWidget {
  const IsSelectDeliveryOrVisa({super.key,  this.iconColor = AppColors.white});
  final Color ?iconColor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IsCashOrVisaCubit(),
      child: BlocBuilder<IsCashOrVisaCubit, IsCashOndeliveryState>(
        builder: (context, state) {
          final cubit = context.read<IsCashOrVisaCubit>();
          return IconButton(
            onPressed: () => cubit.isSelecteDelivery(),
            icon: Icon(
              cubit.isSelected ? Icons.circle : Icons.circle_outlined,
              color: iconColor,
            ),
          );
        },
      ),
    );
  }
}
