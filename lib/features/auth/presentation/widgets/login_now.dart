import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/mixed_text_button.dart';
import 'package:go_router/go_router.dart';

class LoginNow extends StatelessWidget {
  const LoginNow({super.key});

  @override
  Widget build(BuildContext context) {
    return MixedTextButton(
      normalText: 'تمتلك حساب بالفعل؟',
      buttonText: 'تسجيل دخول',
      onPressed: () => context.pop(),
    );
  }
}
