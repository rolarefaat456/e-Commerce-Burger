import 'package:flutter/material.dart';
import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/constans/strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../shared/widgets/custom_text.dart';

class ProfileBtb extends StatelessWidget {
  const ProfileBtb({
    super.key,
    required this.icon,
    required this.text,
    required this.containerColor,
    required this.iconAndTextColor,
  });
  final IconData icon;
  final String text;
  final Color containerColor, iconAndTextColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: containerColor,
        side: BorderSide(color: AppColors.main, width: 3),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          spacing: 16,
          children: [
            CustomText(
              text: text,
              textStyle: AppTextStyle.style18w500(
                context,
              ).copyWith(color: iconAndTextColor, fontFamily: roboto),
            ),
            Icon(icon, color: iconAndTextColor),
          ],
        ),
      ),
    );
  }
}
