import 'package:flutter/material.dart';

import 'on_boarding_page1.dart';
import 'on_boarding_page2.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        OnBoardingPage1(),
        OnBoardingPage2(),
      ],
    );
  }
}
