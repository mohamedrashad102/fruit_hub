import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import 'account_list_tile.dart';

class AccountProfileListTile extends StatelessWidget {
  const AccountProfileListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AccountListTile(
      iconPath: Assets.imagesAccountIcon,
      title: 'الملف الشخصي',
      onTap: () {},
    );
  }
}
