import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/helpers/validator.dart';
import '../../../../core/widgets/custom_text_field.dart';

class CustomPasswordTextField extends HookWidget {
  const CustomPasswordTextField({
    super.key,
    this.onChanged,
    this.hintText,
  });

  final Function(String)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);
    return CustomTextField(
      hintText: hintText,
      obscureText: !isVisible.value,
      suffixIcon: IconButton(
        onPressed: () {
          isVisible.value = !isVisible.value;
        },
        icon: Icon(
          isVisible.value ? Icons.visibility : Icons.visibility_off,
          color: const Color(0XFFC9CECF),
        ),
      ),
      validator: Validator.validatePassword,
      onChanged: onChanged,
    );
  }
}
