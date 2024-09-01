import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/utils/assets.dart';
import 'account_switch_tile.dart';

class AccountNotificationsSwitchTile extends HookWidget {
  const AccountNotificationsSwitchTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = useState(false);
    return AccountSwitchTile(
      iconPath: Assets.imagesNotificationIcon,
      title: 'الاشعارات',
      value: state.value,
      onChanged: (value) {
        state.value = value;
      },
    );
  }
}
