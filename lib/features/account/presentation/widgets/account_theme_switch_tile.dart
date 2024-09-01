import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/utils/assets.dart';
import 'account_switch_tile.dart';

class AccountThemeSwitchTile extends HookWidget {
  const AccountThemeSwitchTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = useState(false);
    return AccountSwitchTile(
      iconPath: Assets.imagesGlobalIcon,
      title: 'الوضع',
      value: state.value,
      onChanged: (value) {
        state.value = value;
      },
    );
  }
}
