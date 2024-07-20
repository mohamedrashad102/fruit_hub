import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/data/cubits/login_cubit.dart';
import 'package:fruit_hub/features/auth/widgets/forget_password_button.dart';
import 'package:fruit_hub/features/auth/widgets/login_button.dart';
import 'package:fruit_hub/features/auth/widgets/login_by_apple.dart';
import 'package:fruit_hub/features/auth/widgets/login_by_facebook.dart';
import 'package:fruit_hub/features/auth/widgets/login_by_google.dart';
import 'package:fruit_hub/features/auth/widgets/login_email_field.dart';
import 'package:fruit_hub/features/auth/widgets/login_password_field.dart';
import 'package:fruit_hub/features/auth/widgets/sign_up_now.dart';
import 'package:fruit_hub/k.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: K.horizontalPadding,
          vertical: K.verticalPadding,
        ),
        child: Form(
          key: context.read<LoginCubit>().fromKey,
          child: const Column(
            children: [
              LoginEmailField(),
              Gap(15),
              LoginPasswordField(),
              Align(
                alignment: Alignment.centerLeft,
                child: ForgetPasswordButton(),
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
            ],
          ),
        ),
      ),
    );
  }
}
