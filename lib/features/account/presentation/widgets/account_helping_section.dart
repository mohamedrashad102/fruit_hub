import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'account_title.dart';
import 'account_who_us_list_tile.dart';

class AccountHelpingSection extends StatelessWidget {
  const AccountHelpingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AccountTitle('المساعدة'),
        Gap(10),
        AccountWhoUsListTile(),
      ],
    );
  }
}
