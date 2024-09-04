import '../../../../core/widgets/custom_password_text_field.dart';
import 'package:flutter/material.dart';

class ProfileConfirmPasswordTextField extends StatelessWidget {
  const ProfileConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPasswordTextField(
      hintText: 'تأكيد كلمة المرور الجديدة',
    );
  }
}
