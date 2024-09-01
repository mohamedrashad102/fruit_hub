import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../k.dart';
import 'account_user_info.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: K.horizontalPadding,
        vertical: K.verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountUserInfo(),
          Gap(16),
          Expanded(child: AccountGeneralSection()),
        ],
      ),
    );
  }
}

class AccountGeneralSection extends StatelessWidget {
  const AccountGeneralSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'عام',
          style: AppStyles.semiBold13,
        ),
        const Gap(16),
        _buildListTile(
          iconPath: Assets.imagesAccountIcon,
          title: 'الملف الشخصي',
          onTap: () {},
        ),
        const Gap(5),
        _buildListTile(
          iconPath: Assets.imagesBoxIcon,
          title: 'طلباتي',
          onTap: () {},
        ),
        const Gap(5),
        _buildListTile(
          iconPath: Assets.imagesEmptyWalletIcon,
          title: 'المدفوعات',
          onTap: () {},
        ),
        const Gap(5),
        _buildListTile(
          iconPath: Assets.imagesHeartIcon,
          title: 'المفضلة',
          onTap: () {},
        ),
        const Gap(5),
        _buildSwitchTile(
          icon: Icons.notifications,
          text: 'الاشعارات',
          value: true,
          onChanged: (value) {
            // Handle switch toggle
          },
        ),
        const Gap(5),
        _buildListTile(
          iconPath: Assets.imagesGlobalIcon,
          title: 'اللغة',
          onTap: () {},
        ),
        const Gap(5),
        _buildSwitchTile(
          icon: Icons.brightness_4,
          text: 'الوضع',
          value: false,
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildListTile({
    required String iconPath,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
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
              Transform.rotate(
                angle: pi,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ],
          ),
          const Gap(2),
          const Divider(),
        ],
      ),
    );
  }

  Widget _buildSwitchTile({
    required IconData icon,
    required String text,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      title: Text(
        text,
        textAlign: TextAlign.right,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
      leading: Icon(icon, color: Colors.green),
    );
  }
}
