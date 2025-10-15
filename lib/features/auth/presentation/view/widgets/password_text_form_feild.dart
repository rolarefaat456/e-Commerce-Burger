import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../shared/widgets/text_form_feild_widget.dart';
import '../../manager/password_obscure_cubit.dart';

import '../../../../../core/constans/app_colors.dart';

class PasswordTextFormFeild extends StatelessWidget {
  const PasswordTextFormFeild({
    super.key,
    required this.controller,
    this.textHint,
    this.lableWidget,
    this.isSolid = true,
    this.readOnly = false,
  });
  final TextEditingController controller;
  final String? textHint;
  final Widget? lableWidget;
  final bool isSolid, readOnly;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordObscureCubit(),
      child: BlocBuilder<PasswordObscureCubit, PasswordObscureState>(
        builder: (context, state) {
          final cubit = context.read<PasswordObscureCubit>();
          return TextFormFeildWidget(
            readOnly: readOnly,
            isSolid: isSolid,
            lableWidget: lableWidget,
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
