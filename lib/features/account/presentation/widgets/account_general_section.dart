import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'account_favorite_list_tile.dart';
import 'account_language_list_tile.dart';
import 'account_notifications_switch_tile.dart';
import 'account_order_list_tile.dart';
import 'account_payments_list_tile.dart';
import 'account_profile_list_tile.dart';
import 'account_theme_switch_tile.dart';
import '../../../../core/widgets/title_text.dart';

class AccountGeneralSection extends StatelessWidget {
  const AccountGeneralSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText('عام'),
        Gap(10),
        AccountProfileListTile(),
        AccountOrderListTile(),
        AccountPaymentsListTile(),
        AccountFavoriteListTile(),
        AccountNotificationsSwitchTile(),
        AccountLanguageListTile(),
        AccountThemeSwitchTile(),
      ],
    );
  }
}
