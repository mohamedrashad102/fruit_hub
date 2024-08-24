import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0XFFDDDFDF),
          ),
        ),
        const Gap(10),
        Text(
          'أو',
          style: AppStyles.semiBold16.copyWith(
            color: Colors.black,
          ),
        ),
        const Gap(10),
        const Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0XFFDDDFDF),
          ),
        ),
      ],
    );
  }
}
