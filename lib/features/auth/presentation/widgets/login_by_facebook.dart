import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/assets.dart';
import 'auth_button.dart';

import '../../data/cubits/login_cubit.dart';

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
