import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import 'auth_button.dart';

class LoginByApple extends StatelessWidget {
  const LoginByApple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AuthButton(
      text: 'تسجيل الدخول بواسطة أبل',
      iconPath: Assets.imagesAppleIcon,
    );
  }
}
