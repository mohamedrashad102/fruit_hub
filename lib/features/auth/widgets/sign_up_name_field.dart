import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';

class SignUpNameField extends StatelessWidget {
  const SignUpNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(hintText: 'الاسم كامل');
  }
}
