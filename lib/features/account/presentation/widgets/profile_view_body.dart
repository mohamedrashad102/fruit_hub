import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../k.dart';
import 'profile_password_details.dart';
import 'profile_personal_details.dart';
import 'profile_save_changes_button.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: K.horizontalPadding,
        vertical: K.verticalPadding,
      ),
      child: Column(
        children: [
          ProfilePersonalDetails(),
          Gap(25),
          ProfilePasswordDetails(),
          Gap(30),
          ProfileSaveChangesButton(),
        ],
      ),
    );
  }
}
