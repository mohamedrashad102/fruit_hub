import '../../../../core/widgets/custom_password_text_field.dart';
import 'package:flutter/material.dart';

class ProfileOldPasswordTextField extends StatelessWidget {
  const ProfileOldPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPasswordTextField(
      hintText: 'كلمة المرور الحالية',
    );
  }
}
