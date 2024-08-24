import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_hub/core/services/cached_data.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/utils/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    _hideAppBarStatus();
    _navigateToOnBoarding();
    super.initState();
  }

  void _hideAppBarStatus() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [
        SystemUiOverlay.bottom,
      ],
    );
  }

  void _navigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        CachedData.setIsLogin(false);
        CachedData.getSkipOnboarding()
            ? CachedData.getIsLogin()
                ? context.go(AppRouter.homeView)
                : context.go(AppRouter.loginView)
            : context.go(AppRouter.onBoardingView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              Assets.imagesSplashPlant,
            ),
          ),
          SvgPicture.asset(
            Assets.imagesSplashLogo,
          ),
          SvgPicture.asset(
            Assets.imagesSplashBottom,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
