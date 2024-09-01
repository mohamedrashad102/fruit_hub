import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../core/utils/app_styles.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  });

  final String iconPath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          const Gap(10),
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
          const Gap(15),
          const Divider(
            height: 0,
          ),
        ],
      ),
    );
  }
}
