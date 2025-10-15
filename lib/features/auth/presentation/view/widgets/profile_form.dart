import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../shared/widgets/custom_text.dart';
import '../../../../../shared/widgets/text_form_feild_widget.dart';
import 'password_text_form_feild.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController deliveryAddressController;
  late TextEditingController passwordController;
  @override
  void initState() {
    nameController = TextEditingController(text: 'ffff');
    emailController = TextEditingController(text: 'ffff');
    deliveryAddressController = TextEditingController(text: 'ffff');
    passwordController = TextEditingController(text: 'ffff');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 16,
        children: [
          TextFormFeildWidget(
            readOnly: true,
            isSolid: false,
            lableWidget: CustomText(
              text: 'Name',
              textStyle: AppTextStyle.style16w500(context),
            ),
            controller: nameController,
          ),
          TextFormFeildWidget(
            readOnly: true,
            isSolid: false,
            lableWidget: CustomText(
              text: 'email',
              textStyle: AppTextStyle.style16w500(context),
            ),
            controller: emailController,
          ),
          TextFormFeildWidget(
            readOnly: true,
            isSolid: false,
            lableWidget: CustomText(
              text: 'Delivery Address',
              textStyle: AppTextStyle.style16w500(context),
            ),
            controller: deliveryAddressController,
          ),
          PasswordTextFormFeild(
            readOnly: true,
            isSolid: false,
            lableWidget: CustomText(
              text: 'Passowrd',
              textStyle: AppTextStyle.style16w500(context),
            ),
            controller: passwordController,
          ),
        ],
      ),
    );
  }
}
