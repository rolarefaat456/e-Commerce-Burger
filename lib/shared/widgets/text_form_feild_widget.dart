import 'package:flutter/material.dart';
import 'custom_text.dart';

import '../../core/constans/app_colors.dart';
import '../../core/utils/app_text_styles.dart';

class TextFormFeildWidget extends StatelessWidget {
  const TextFormFeildWidget({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    required this.controller,
    this.lableWidget,
    this.isSolid = true,
    this.readOnly = false,
  });
  final String? hintText;
  final Widget? lableWidget;
  final Widget? suffixIcon;
  final bool obscureText, isSolid, readOnly;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      controller: controller,
      style: AppTextStyle.style16w500(
        context,
      ).copyWith(color: isSolid ? AppColors.main : AppColors.white),
      obscureText: obscureText,
      cursorColor: AppColors.main,
      cursorHeight: 15,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: isSolid ? AppColors.white : AppColors.main,
        filled: true,
        label: lableWidget,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.white),
        ),

        hint: CustomText(
          text: hintText ?? '',
          textStyle: AppTextStyle.style12w400(context),
          textAlign: TextAlign.start,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
