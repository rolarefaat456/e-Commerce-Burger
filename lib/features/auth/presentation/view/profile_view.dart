import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constans/app_colors.dart';
import 'package:hungry/core/utils/app_text_styles.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/shared/widgets/custom_text.dart';
import '../../../../core/constans/strings.dart';
import '../../../checkout/presentation/view/widgets/cash_or_visa_btn.dart';
import 'widgets/profile_btn.dart';
import 'widgets/profile_form.dart';
import 'widgets/profile_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () async {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.main,
          elevation: 0,
          scrolledUnderElevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.settings, color: AppColors.white),
            ),
          ],
        ),
        backgroundColor: AppColors.main,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 32,
              children: [
                ProfileImage(),
                ProfileForm(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Divider(),
                ),
                CashOrVisaContainer(
                  iconColor: AppColors.main,
                  image: Assets.imagesVisa,
                  color: AppColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Debit card',
                        textStyle: AppTextStyle.style14w500(
                          context,
                        ).copyWith(fontFamily: roboto),
                      ),
                      CustomText(
                        text: '3566 **** **** 0505',
                        textStyle: AppTextStyle.style14w500(context).copyWith(
                          fontFamily: roboto,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        bottomSheet: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(color: AppColors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileBtb(
                icon: CupertinoIcons.pencil,
                text: 'Edit Profile',
                containerColor: AppColors.main,
                iconAndTextColor: AppColors.white,
              ),
              ProfileBtb(
                icon: Icons.logout,
                text: 'Log out',
                containerColor: AppColors.white,
                iconAndTextColor: AppColors.main,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
