import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextButton(
      text: 'نسيت كلمة المرور؟',
      isLight: true,
    );
  }
}
