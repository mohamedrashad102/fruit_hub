import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/data/cubits/sign_up_cubit.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'إنشاء حساب جديد',
      onPressed: () {
        context.read<SignUpCubit>().signUpWithEmailAndPassword();
      },
    );
  }
}
