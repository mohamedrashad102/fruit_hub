import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import 'account_list_tile.dart';

class AccountOrderListTile extends StatelessWidget {
  const AccountOrderListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AccountListTile(
      iconPath: Assets.imagesBoxIcon,
      title: 'طلباتي',
      onTap: () {},
    );
  }
}
