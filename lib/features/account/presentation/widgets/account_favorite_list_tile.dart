import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import 'account_list_tile.dart';

class AccountFavoriteListTile extends StatelessWidget {
  const AccountFavoriteListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AccountListTile(
      iconPath: Assets.imagesHeartIcon,
      title: 'المفضلة',
      onTap: () {},
    );
  }
}
