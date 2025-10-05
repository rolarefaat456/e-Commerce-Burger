import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constans/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/logo_widget.dart';
import 'widgets/sign_up_form.dart';
import '../../../../core/widgets/custom_text.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () async {
        FocusScope.of(
          context,
        ).unfocus(); // function btl8y el keyboard lma ados fy ay 7ta
      },
      child: Scaffold(
        backgroundColor: AppColors.main,
        body: Container(
          margin: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            children: [
              Gap(80),
              LogoWidget(),
              Gap(16),
              CustomText(
                text: 'wellcome back, Discover the fast food',
                textStyle: AppTextStyle.style16w500(context),
              ),
              Gap(48),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
