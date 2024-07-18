import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/mixed_text_button.dart';

class SignUpNow extends StatelessWidget {
  const SignUpNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MixedTextButton(
      normalText: 'ليس لديك حساب؟ ',
      buttonText: 'قم بانشاء حساب',
    );
  }
}
