import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';

import '../../data/cubits/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'تسجيل الدخول',
      onPressed: context.read<LoginCubit>().loginWithEmailAndPassword,
    
    );
  }
}
