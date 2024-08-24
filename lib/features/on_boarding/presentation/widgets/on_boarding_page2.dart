import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';

import '../../../../core/utils/app_styles.dart';
import 'custom_on_boarding_page.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomOnBoardingPage(
      logoPath: Assets.imagesOnBoardingLogo2,
      title: Text(
        'ابحث وتسوق',
        style: AppStyles.bold23,
      ),
      color: const Color(0xffB0E8C7),
      description:
          "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
    );
  }
}
