import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/mixed_text_button.dart';
import '../../../k.dart';
import '../widgets/sign_up_email_field.dart';
import '../widgets/sign_up_name_field.dart';
import '../widgets/sign_up_password_field.dart';
import 'sign_up_privacy_policy.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'حساب جديد',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: K.horizontalPadding,
          vertical: K.verticalPadding,
        ),
        child: Column(
          children: [
            SignUpNameField(),
            Gap(15),
            SignUpEmailField(),
            Gap(15),
            SignUpPasswordField(),
            Gap(15),
            SignUpPrivacyPolicy(),
            Gap(20),
            SignUpButton(),
            Gap(15),
            LoginNow(),
          ],
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'إنشاء حساب جديد',
      onPressed: () {},
    );
  }
}

class LoginNow extends StatelessWidget {
  const LoginNow({super.key});

  @override
  Widget build(BuildContext context) {
    return MixedTextButton(
      normalText: 'تمتلك حساب بالفعل؟',
      buttonText: 'تسجيل دخول',
      onPressed: () => context.pop(),
    );
  }
}
