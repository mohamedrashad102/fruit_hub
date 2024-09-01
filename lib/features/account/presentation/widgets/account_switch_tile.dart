import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class AccountSwitchTile extends StatelessWidget {
  const AccountSwitchTile({
    super.key,
    required this.iconPath,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String iconPath;
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(5),
        Row(
          children: [
            SvgPicture.asset(iconPath),
            const Gap(16),
            Text(
              title,
              style: AppStyles.semiBold13.copyWith(
                color: const Color(0xFF949D9E),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 35,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Switch(
                  value: value,
                  onChanged: onChanged,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  inactiveThumbColor: const Color(0XFFFFFFFF),
                  inactiveTrackColor: const Color(0XFF888FA0),
                  trackOutlineColor: WidgetStateProperty.all<Color>(
                    value ? Colors.green : const Color(0XFF888FA0),
                  ),
                  activeColor: AppColors.primaryColor,
                  activeTrackColor: Colors.green,
                ),
              ),
            )
          ],
        ),
        const Gap(10),
        const Divider(
          height: 0,
        ),
      ],
    );
  }
}
