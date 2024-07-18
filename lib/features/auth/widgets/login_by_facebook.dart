import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/features/auth/widgets/auth_button.dart';

class LoginByFacebook extends StatelessWidget {
  const LoginByFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AuthButton(
      text: 'تسجيل الدخول بواسطة فيسبوك',
      iconPath: Assets.imagesFacebookIcon,
    );
  }
}
