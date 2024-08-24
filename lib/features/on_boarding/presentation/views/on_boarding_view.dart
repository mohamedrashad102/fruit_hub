import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/k.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/services/cached_data.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/on_boarding_pages.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final _pageController = PageController(initialPage: 0);
  int _page = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _page = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: OnBoardingPages(
              pageController: _pageController,
            ),
          ),
          DotsIndicator(
            position: _page,
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: AppColors.primaryColor.withOpacity(0.5),
            ),
          ),
          const Gap(20),
          Visibility(
            visible: _page == 1,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: K.horizontalPadding,
                vertical: K.verticalPadding,
              ),
              child: CustomButton(
                text: 'ابدأ',
                onPressed: () {
                  CachedData.setSkipOnboarding(true);
                  context.go(AppRouter.loginView);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
