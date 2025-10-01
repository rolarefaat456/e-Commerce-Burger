import 'package:flutter/material.dart';
import 'package:hungry/core/constans/app_colors.dart';

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

double getResponseFontSize(BuildContext context, double fontsize) {
  double scaleFactor = getScaleFactor(context);
  double responsivefontsize = fontsize * scaleFactor;
  double lowerLimit = responsivefontsize * 0.8;
  double upperLimit = responsivefontsize * 1.2;
  return responsivefontsize.clamp(lowerLimit, upperLimit);
}

abstract class AppTextStyle {
  static TextStyle style60w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 60),
      fontWeight: FontWeight.w400,
      fontFamily: 'LuckiestGuy',
      color: AppColors.white,
    );
  }

  static TextStyle style24w700(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 24),
      fontWeight: FontWeight.w700,
      fontFamily: 'LuckiestGuy',
      color: AppColors.backRed,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle style24w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 24),
      fontWeight: FontWeight.w500,
      fontFamily: 'LuckiestGuy',
      color: AppColors.backRed,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle style32w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 32),
      fontWeight: FontWeight.w500,
      fontFamily: 'LuckiestGuy',
      color: AppColors.backRed,
    );
  }

  static TextStyle style16w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'LuckiestGuy',
      color: AppColors.white,
    );
  }

  static TextStyle style16w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'LuckiestGuy',
      color: AppColors.white,
    );
  }

  static TextStyle style16w700(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'LuckiestGuy',
      color: AppColors.white,
    );
  }

  static TextStyle style12w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'LuckiestGuy',
      color: AppColors.grey,
    );
  }

  static TextStyle style14w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 14),
      fontWeight: FontWeight.w500,
      fontFamily: 'LuckiestGuy',
      color: AppColors.backRed,
    );
  }
}
