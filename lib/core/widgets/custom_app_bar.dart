import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.backButton = true,
  });
  final String? title;
  final bool backButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        title ?? '',
        style: AppStyles.bold19,
      ),
      centerTitle: true,
      leading: backButton
          ? IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
