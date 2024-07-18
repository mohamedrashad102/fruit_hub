import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomButton(
      text: 'تسجيل الدخول',
    );
  }
}
