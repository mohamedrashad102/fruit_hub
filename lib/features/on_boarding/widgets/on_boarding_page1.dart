import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';

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
        pageController.nextPage(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
      color: const Color.fromARGB(255, 245, 198, 110),
      logoPath: Assets.imagesOnBoardingLogo1,
      title: RichText(
        text: const TextSpan(
          text: ' مرحبًا بك في',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: ' Fruit',
              style: TextStyle(
                color: Color(0xff1B5E37),
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: ' Hub',
              style: TextStyle(
                color: Color(0xffF4A91F),
                fontSize: 23,
                fontWeight: FontWeight.w700,
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
