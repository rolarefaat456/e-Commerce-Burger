import 'package:flutter/material.dart';

import '../constans/app_colors.dart';
import '../constans/strings.dart';

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
      fontFamily: luckiestGuy,
      color: AppColors.white,
    );
  }

  static TextStyle style24w700(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 24),
      fontWeight: FontWeight.w700,
      fontFamily: luckiestGuy,
      color: AppColors.darkRed,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle style24w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 24),
      fontWeight: FontWeight.w500,
      fontFamily: luckiestGuy,
      color: AppColors.darkRed,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle style32w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 32),
      fontWeight: FontWeight.w500,
      fontFamily: luckiestGuy,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style32w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 32),
      fontWeight: FontWeight.w400,
      fontFamily: reemKufiInk,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style30w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 30),
      fontWeight: FontWeight.bold,
      fontFamily: roboto,
      color: AppColors.main,
    );
  }

  static TextStyle style16w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w500,
      fontFamily: roboto,
      color: AppColors.white,
    );
  }

  static TextStyle style16w800(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w800,
      fontFamily: roboto,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style16w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w400,
      fontFamily: luckiestGuy,
      color: AppColors.white,
    );
  }

  static TextStyle style16w600(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w600,
      fontFamily: roboto,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style16w700(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 16),
      fontWeight: FontWeight.w700,
      fontFamily: luckiestGuy,
      color: AppColors.white,
    );
  }

  static TextStyle style12w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 12),
      fontWeight: FontWeight.w400,
      fontFamily: luckiestGuy,
      color: AppColors.grey,
    );
  }

  static TextStyle style12w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 12),
      fontWeight: FontWeight.w500,
      fontFamily: roboto,
      color: AppColors.white,
    );
  }

  static TextStyle style14w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 14),
      fontWeight: FontWeight.w500,
      fontFamily: luckiestGuy,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style14w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 14),
      fontWeight: FontWeight.w400,
      fontFamily: roboto,
      color: AppColors.grey,
    );
  }

  static TextStyle style18w600(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 18),
      fontWeight: FontWeight.w600,
      fontFamily: roboto,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style18w700(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 18),
      fontWeight: FontWeight.w700,
      fontFamily: luckiestGuy,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style14w600(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 14),
      fontWeight: FontWeight.w600,
      fontFamily: roboto,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style20w600(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 20),
      fontWeight: FontWeight.w600,
      fontFamily: roboto,
      color: AppColors.darkRed,
    );
  }

  static TextStyle style20w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 20),
      fontWeight: FontWeight.w500,
      fontFamily: roboto,
      color: AppColors.white,
    );
  }

  static TextStyle style18w500(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 18),
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
      color: AppColors.darkRed,
    );
  }

  static TextStyle style18w400(context) {
    return TextStyle(
      fontSize: getResponseFontSize(context, 18),
      fontWeight: FontWeight.w400,
      fontFamily: roboto,
      color: AppColors.darkGrey,
    );
  }
}
