import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/cubits/sign_up_cubit.dart';
import 'login_now.dart';
import 'sign_up_button.dart';
import 'sign_up_email_field.dart';
import 'sign_up_name_field.dart';
import 'sign_up_password_field.dart';
import 'sign_up_privacy_policy.dart';
import '../../../../k.dart';
import 'package:gap/gap.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
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
          key: context.read<SignUpCubit>().fromKey,
          autovalidateMode: context.read<SignUpCubit>().autoValidateMode,
          child: const Column(
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
