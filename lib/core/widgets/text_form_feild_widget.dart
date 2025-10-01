
import 'package:flutter/material.dart';
import 'package:hungry/core/widgets/custom_text.dart';

import '../constans/app_colors.dart';
import '../utils/app_text_styles.dart';

class TextFormFeildWidget extends StatelessWidget {
  const TextFormFeildWidget({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false, required this.controller
  });
  final String hintText;
  final Widget ?suffixIcon;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
        fillColor: AppColors.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        hint:CustomText(text: hintText, textStyle: AppTextStyle.style12w400(context)),
        suffixIcon: suffixIcon
      ),
    );
  }
}
