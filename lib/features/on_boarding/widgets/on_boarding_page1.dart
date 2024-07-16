import 'package:flutter/material.dart';
import 'package:fruit_hub/core/cached_data/cached_data.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:go_router/go_router.dart';

import 'custom_on_boarding_page.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingPage(
      isSkip: true,
      onPressed: () {
        CachedData.setSkipOnboarding(true);
        context.go(AppRouter.loginView);
      },
      color: const Color.fromARGB(255, 245, 198, 110),
      logoPath: Assets.imagesOnBoardingLogo1,
      title: RichText(
        text: TextSpan(
          text: 'مرحبًا بك في',
          style: AppStyles.bold19,
          children: [
            TextSpan(
              text: ' Fruit',
              style: AppStyles.bold19.copyWith(
                color: const Color(0xff1B5E37),
              ),
            ),
            TextSpan(
              text: 'HUB',
              style: AppStyles.bold19.copyWith(
                color: const Color(0xffF4A91F),
              ),
            ),
          ],
        ),
      ),
      description:
          "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
    );
  }
}
