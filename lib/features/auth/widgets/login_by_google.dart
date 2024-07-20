import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/features/auth/widgets/auth_button.dart';

import '../data/cubits/login_cubit.dart';

class LoginByGoogle extends StatelessWidget {
  const LoginByGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthButton(
      text: 'تسجيل الدخول بواسطة جوجل',
      iconPath: Assets.imagesGoogleIcon,
      onPressed: context.read<LoginCubit>().loginWithGoogle,
    );
  }
}
