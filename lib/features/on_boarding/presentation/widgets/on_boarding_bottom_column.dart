import 'package:flutter/cupertino.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

class OnBoardingBottomColumn extends StatelessWidget {
  const OnBoardingBottomColumn({
    super.key,
    required this.title,
    required this.description,
  });

  final Widget title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title,
        const Gap(24),
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppStyles.semiBold13.copyWith(
            color: const Color(0xff4E5556),
          ),
        ),
      ],
    );
  }
}
