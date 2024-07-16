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
      children: [
        OnBoardingPage1(
          pageController: pageController,
        ),
        const OnBoardingPage2(),
      ],
    );
  }
}
