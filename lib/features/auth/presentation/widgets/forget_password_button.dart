import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:fruit_hub/core/widgets/custom_text_button.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: 'نسيت كلمة المرور؟',
      isLight: true,
      onPressed: () => context.push(AppRouter.forgetPasswordView),
    );
  }
}
