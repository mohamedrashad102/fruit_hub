import '../../../../core/widgets/custom_password_text_field.dart';
import 'package:flutter/material.dart';

class ProfileNewPasswordTextField extends StatelessWidget {
  const ProfileNewPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPasswordTextField(
      hintText: 'كلمة المرور الجديدة',
    );
  }
}
