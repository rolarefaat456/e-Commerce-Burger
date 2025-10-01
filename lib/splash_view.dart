import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_colors.dart';
import 'package:hungry/core/constans/routes.dart';
import 'package:hungry/core/utils/assets.dart';

import 'core/widgets/logo_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  void navigateAfterDelay() async {
  await Future.delayed(Duration(seconds: 2));
  if (!mounted) return;
  Navigator.of(context).pushReplacementNamed(Routes.loginRoute);
}
  @override
  void initState() {
    navigateAfterDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(
              48,
            ), // packege lw at7tt fy column bta5d tol by el kema elly gwaha lw fy row 3rd
            LogoWidget(),
            Spacer(),
            Image.asset(Assets.imagesBurgerBackGround),
          ],
        ),
      ),
    );
  }
}
