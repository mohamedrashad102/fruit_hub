import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_styles.dart';

class HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            ),
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'صباح الخير',
                style: AppStyles.regular16.copyWith(
                  color: const Color(0xff949D9E),
                ),
              ),
              Text(
                'أحمد مصطفي',
                style: AppStyles.bold16.copyWith(
                  color: const Color(0xff0C0D0D),
                ),
              ),
            ],
          ),
        ],
      ),
      toolbarHeight: 70,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
