import '../../../../core/helpers/validator.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ProfileEmailTextField extends StatelessWidget {
  const ProfileEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      hintText: 'mohamedrashadhyg@gmail.com',
      keyboardType: TextInputType.emailAddress,
      validator: Validator.validateEmail,
      suffixIcon: Icon(
        Icons.edit,
        color: Colors.grey,
      ),
    );
  }
}
