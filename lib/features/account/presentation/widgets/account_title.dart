import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class AccountTitle extends StatelessWidget {
  const AccountTitle(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.semiBold13,
    );
  }
}
