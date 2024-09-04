import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'account_who_us_list_tile.dart';
import '../../../../core/widgets/title_text.dart';

class AccountHelpingSection extends StatelessWidget {
  const AccountHelpingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText('المساعدة'),
        Gap(10),
        AccountWhoUsListTile(),
      ],
    );
  }
}
