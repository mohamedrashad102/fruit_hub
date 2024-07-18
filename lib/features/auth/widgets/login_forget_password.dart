import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_button.dart';

class LoginForgetPassword extends StatelessWidget {
  const LoginForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextButton(
      text: 'نسيت كلمة المرور؟',
      isLight: true,
    );
  }
}
