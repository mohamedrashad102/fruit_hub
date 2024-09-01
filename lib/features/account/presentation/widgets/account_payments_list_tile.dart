import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import 'account_list_tile.dart';

class AccountPaymentsListTile extends StatelessWidget {
  const AccountPaymentsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AccountListTile(
      iconPath: Assets.imagesEmptyWalletIcon,
      title: 'المدفوعات',
      onTap: () {},
    );
  }
}
