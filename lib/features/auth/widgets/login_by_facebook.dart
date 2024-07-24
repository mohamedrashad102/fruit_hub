import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/features/auth/widgets/auth_button.dart';

import '../data/cubits/login_cubit.dart';

class LoginByFacebook extends StatelessWidget {
  const LoginByFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthButton(
      text: 'تسجيل الدخول بواسطة فيسبوك',
      iconPath: Assets.imagesFacebookIcon,
      onPressed: () => context.read<LoginCubit>().loginWithFacebook(),
    );
  }
}
