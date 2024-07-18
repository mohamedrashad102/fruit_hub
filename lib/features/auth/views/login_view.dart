import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/k.dart';
import 'package:gap/gap.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/mixed_text_button.dart';
import '../../../core/widgets/or_divider.dart';
import '../widgets/auth_button.dart';
import '../widgets/login_email_field.dart';
import '../widgets/login_forget_password.dart';
import '../widgets/login_password_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'تسجيل الدخول',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: K.horizontalPadding,
          ),
          child: Column(
            children: [
              Gap(24),
              LoginEmailField(),
              Gap(15),
              LoginPasswordField(),
              Align(
                alignment: Alignment.centerLeft,
                child: LoginForgetPassword(),
              ),
              // Gap(15),
              Gap(20),
              CustomButton(
                text: 'تسجيل الدخول',
              ),
              Gap(20),
              MixedTextButton(
                normalText: 'ليس لديك حساب؟ ',
                buttonText: 'قم بانشاء حساب',
              ),
              Gap(20),
              OrDivider(),
              Gap(20),
              AuthButton(
                text: 'تسجيل الدخول بواسطة جوجل',
                iconPath: Assets.imagesGoogleIcon,
              ),
              Gap(15),
              AuthButton(
                text: 'تسجيل الدخول بواسطة أبل',
                iconPath: Assets.imagesAppleIcon,
              ),
              Gap(15),
              AuthButton(
                text: 'تسجيل الدخول بواسطة فيسبوك',
                iconPath: Assets.imagesFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
