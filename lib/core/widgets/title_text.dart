import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TitleText extends StatelessWidget {
  const TitleText(
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
