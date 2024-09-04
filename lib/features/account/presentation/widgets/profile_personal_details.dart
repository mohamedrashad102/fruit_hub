import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/title_text.dart';
import 'profile_email_text_field.dart';
import 'profile_name_text_field.dart';

class ProfilePersonalDetails extends StatelessWidget {
  const ProfilePersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText('المعلومات الشخصية'),
        Gap(8),
        ProfileNameTextField(),
        Gap(8),
        ProfileEmailTextField(),
      ],
    );
  }
}
