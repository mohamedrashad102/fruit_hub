import '../../../../core/utils/assets.dart';
import 'account_list_tile.dart';
import 'package:flutter/material.dart';

class AccountWhoUsListTile extends StatelessWidget {
  const AccountWhoUsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AccountListTile(
      iconPath: Assets.imagesInfoCircleIcon,
      title: 'من نحن',
      onTap: () {},
    );
  }
}
