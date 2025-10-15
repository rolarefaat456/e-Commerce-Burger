import 'package:flutter/cupertino.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/assets.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.heightOf(context) / 5.5,
        width: MediaQuery.widthOf(context) / 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.white, width: 3),
        ),
        child: Image.asset(Assets.imagesSonicFreind, fit: BoxFit.cover),
      ),
    );
  }
}
