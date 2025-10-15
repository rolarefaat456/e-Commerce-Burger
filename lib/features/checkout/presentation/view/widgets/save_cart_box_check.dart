import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/constans/strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../shared/widgets/custom_text.dart';
import '../../manager/is_cash_or_visa_cubit.dart';

class SaveCartBoxCheckRow extends StatelessWidget {
  const SaveCartBoxCheckRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocProvider(
          create: (context) => IsCashOrVisaCubit(),
          child: BlocBuilder<IsCashOrVisaCubit, IsCashOndeliveryState>(
            builder: (context, state) {
              final cubit = context.read<IsCashOrVisaCubit>();
              return Checkbox(
                checkColor: AppColors.white,
                activeColor: Colors.red,
                value: cubit.isSelected,
                onChanged: (_) => cubit.isSelecteDelivery(),
              );
            },
          ),
        ),
        CustomText(
          text: 'Save card details for future payments',
          textStyle: AppTextStyle.style16w400(
            context,
          ).copyWith(fontFamily: roboto, color: AppColors.darkGrey),
        ),
      ],
    );
  }
}
