import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';

import 'custom_on_boarding_page.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomOnBoardingPage(
      logoPath: Assets.imagesOnBoardingLogo2,
      title: Text(
        'ابحث وتسوق',
        style: TextStyle(
          color: Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Color(0xffB0E8C7),
      description:
          "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
    );
  }
}
