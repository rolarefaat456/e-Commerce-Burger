
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/constans/routes.dart';
import '../../../../../shared/widgets/text_form_feild_widget.dart';
import 'custom_auth_btn.dart';
import 'custom_text_btn.dart';
import 'password_text_form_feild.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormFeildWidget(
              hintText: 'Name',
              suffixIcon: Icon(Icons.email_outlined, color: AppColors.main),
              controller: nameController,
            ),
            Gap(16),
            TextFormFeildWidget(
              hintText: 'Email',
              suffixIcon: Icon(Icons.email_outlined, color: AppColors.main),
              controller: emailController,
            ),
            Gap(16),
            PasswordTextFormFeild(controller: passwordController, textHint: 'Password',),
            Gap(16),
            PasswordTextFormFeild(controller: passwordController, textHint: 'Confirm password',),
            Gap(50),
            CustomTextBtn(text: "Do you have account", onPresed: () => Navigator.pushNamed(context, Routes.loginRoute),),
            CustomAuthBtn(
              text: 'SignUp',
              backGrundColor: AppColors.yellow,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                } else {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
