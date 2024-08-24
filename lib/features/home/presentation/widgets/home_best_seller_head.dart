import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_text_button.dart';

class HomeBestSellerHead extends StatelessWidget {
  const HomeBestSellerHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الأكثر مبيعًا',
          style: AppStyles.bold16.copyWith(
            color: const Color(0xff0C0D0D),
          ),
        ),
        const Spacer(),
        const CustomTextButton(
          text: 'المزيد',
          color: Color(0xff949D9E),
        ),
      ],
    );
  }
}
