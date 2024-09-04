import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import 'profile_confirm_password_text_field.dart';
import 'profile_new_password_text_field.dart';
import 'profile_old_password_text_field.dart';

class ProfilePasswordDetails extends StatelessWidget {
  const ProfilePasswordDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText('تغيير كلمة المرور'),
        Gap(8),
        ProfileOldPasswordTextField(),
        Gap(8),
        ProfileNewPasswordTextField(),
        Gap(8),
        ProfileConfirmPasswordTextField(),
      ],
    );
  }
}
