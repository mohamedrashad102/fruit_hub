import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/auth_button.dart';

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
