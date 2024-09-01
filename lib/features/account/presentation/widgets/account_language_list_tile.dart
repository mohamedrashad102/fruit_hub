import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import 'account_list_tile.dart';

class AccountLanguageListTile extends StatelessWidget {
  const AccountLanguageListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AccountListTile(
      iconPath: Assets.imagesGlobalIcon,
      title: 'اللغة',
      onTap: () {},
    );
  }
}
