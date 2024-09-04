import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
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
      onTap: () {
        context.push(AppRouter.profileView);
      },
    );
  }
}
