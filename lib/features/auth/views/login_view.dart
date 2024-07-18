import 'package:flutter/material.dart';
import 'package:fruit_hub/k.dart';
import 'package:gap/gap.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/or_divider.dart';
import '../widgets/login_button.dart';
import '../widgets/login_by_apple.dart';
import '../widgets/login_by_facebook.dart';
import '../widgets/login_by_google.dart';
import '../widgets/login_email_field.dart';
import '../widgets/login_forget_password.dart';
import '../widgets/login_password_field.dart';
import '../widgets/sign_up_now.dart';

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
              LoginButton(),
              Gap(20),
              SignUpNow(),
              Gap(20),
              OrDivider(),
              Gap(20),
              LoginByGoogle(),
              Gap(15),
              LoginByApple(),
              Gap(15),
              LoginByFacebook(),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
