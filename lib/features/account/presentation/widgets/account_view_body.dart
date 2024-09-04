import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../k.dart';
import 'account_general_section.dart';
import 'account_helping_section.dart';
import 'account_logout_button.dart';
import 'account_user_info.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: K.horizontalPadding,
        vertical: K.verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountUserInfo(),
          Gap(25),
          AccountGeneralSection(),
          Gap(25),
          AccountHelpingSection(),
          Gap(25),
          AccountLogoutButton(),
        ],
      ),
    );
  }
}
