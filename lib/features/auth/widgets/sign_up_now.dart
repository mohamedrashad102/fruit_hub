import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:fruit_hub/core/widgets/mixed_text_button.dart';
import 'package:go_router/go_router.dart';

class SignUpNow extends StatelessWidget {
  const SignUpNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MixedTextButton(
      normalText: 'ليس لديك حساب؟',
      buttonText: 'قم بانشاء حساب',
      onPressed: () => context.push(AppRouter.signUpView),
    );
  }
}
