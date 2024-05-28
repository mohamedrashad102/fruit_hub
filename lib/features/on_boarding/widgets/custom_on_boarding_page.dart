import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'on_boarding_bottom_column.dart';
import 'on_boarding_top_stack.dart';

class CustomOnBoardingPage extends StatelessWidget {
  const CustomOnBoardingPage({
    super.key,
    required this.logoPath,
    required this.title,
    required this.description,
    required this.color,
    this.isSkip = false,
  });

  final String logoPath;
  final Widget title;
  final String description;
  final Color color;
  final bool isSkip;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingTopStack(
          color: color,
          logoPath: logoPath,
          isSkip: isSkip,
        ),
        const Gap(60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: OnBoardingBottomColumn(
            title: title,
            description: description,
          ),
        ),
      ],
    );
  }
}
