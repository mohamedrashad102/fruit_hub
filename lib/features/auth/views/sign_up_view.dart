import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../k.dart';
import '../widgets/login_now.dart';
import '../widgets/sign_up_button.dart';
import '../widgets/sign_up_email_field.dart';
import '../widgets/sign_up_name_field.dart';
import '../widgets/sign_up_password_field.dart';
import '../widgets/sign_up_privacy_policy.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'حساب جديد',
      ),
      body: SingleChildScrollView(
        child: Padding(
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
      ),
    );
  }
}
