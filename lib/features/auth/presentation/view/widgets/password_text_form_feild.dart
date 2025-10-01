import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/features/auth/presentation/manager/password_obscure_cubit.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/widgets/text_form_feild_widget.dart';

class PasswordTextFormFeild extends StatelessWidget {
  const PasswordTextFormFeild({super.key, required this.controller, required this.textHint});
  final TextEditingController controller;
  final String textHint;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordObscureCubit(),
      child: BlocBuilder<PasswordObscureCubit, PasswordObscureState>(
        builder: (context, state) {
          final cubit = context.read<PasswordObscureCubit>();
          return TextFormFeildWidget(
            controller: controller,
            obscureText: cubit.isObscure,
            hintText: textHint,
            suffixIcon: IconButton(
              onPressed: () => cubit.toggleObscure(),
              icon: Icon(
                state is PasswordTrueObscureState
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: AppColors.main,
              ),
            ),
          );
        },
      ),
    );
  }
}
