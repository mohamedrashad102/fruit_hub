import 'package:flutter/cupertino.dart';
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
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
