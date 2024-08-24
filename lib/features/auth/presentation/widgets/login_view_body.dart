import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/or_divider.dart';
import '../../data/cubits/login_cubit.dart';
import 'forget_password_button.dart';
import 'login_button.dart';
import 'login_by_apple.dart';
import 'login_by_facebook.dart';
import 'login_by_google.dart';
import 'login_email_field.dart';
import 'login_password_field.dart';
import 'sign_up_now.dart';
import '../../../../k.dart';
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
