import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../manager/slider_cubit.dart';

class HeaderSliderWidget extends StatelessWidget {
  const HeaderSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderCubit(),
      child: BlocBuilder<SliderCubit, SliderState>(
        builder: (context, state) {
          final cubit = context.read<SliderCubit>();
          return Slider(
            min: 0,
            max: 1,
            activeColor: AppColors.main,
            value: cubit.changing,
            onChanged: (value) => cubit.onChangeSlider(value),
            inactiveColor: AppColors.grey,
          );
        },
      ),
    );
  }
}
