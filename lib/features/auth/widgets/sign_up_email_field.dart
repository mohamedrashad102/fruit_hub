import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';

class SignUpEmailField extends StatelessWidget {
  const SignUpEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(hintText: 'البريد الالكتروني');
  }
}
