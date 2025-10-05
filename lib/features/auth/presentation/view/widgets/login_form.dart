import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/constans/routes.dart';
import '../../../../../core/widgets/text_form_feild_widget.dart';
import 'custom_auth_btn.dart';
import 'custom_text_btn.dart';
import 'password_text_form_feild.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormFeildWidget(
              hintText: 'Email',
              suffixIcon: Icon(Icons.email_outlined, color: AppColors.main),
              controller: emailController,
            ),
            Gap(16),
            PasswordTextFormFeild(
              controller: passwordController,
              textHint: 'Password',
            ),
            Gap(50),
            CustomTextBtn(
              text: "Don't have account",
              onPresed: () => Navigator.pushNamed(context, Routes.signUpRoute),
            ),
            CustomAuthBtn(
              text: 'LogIn',
              backGrundColor: AppColors.yellow,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacementNamed(context, Routes.rootRoute);
                } else {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
