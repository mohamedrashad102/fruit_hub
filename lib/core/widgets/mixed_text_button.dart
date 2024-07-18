import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

import '../utils/app_colors.dart';

class MixedTextButton extends StatelessWidget {
  const MixedTextButton({
    super.key,
    required this.normalText,
    required this.buttonText,
    this.isLight = false,
    this.onPressed,
  });
  final String normalText;
  final String buttonText;
  final bool isLight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.start,
      softWrap: true,
      TextSpan(
        children: [
          TextSpan(
            text: normalText,
            style: AppStyles.semiBold13.copyWith(
              color: const Color(0XFF949D9E),
            ),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: buttonText,
            style: AppStyles.semiBold13.copyWith(
              color: isLight
                  ? AppColors.lightPrimaryColor
                  : AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
