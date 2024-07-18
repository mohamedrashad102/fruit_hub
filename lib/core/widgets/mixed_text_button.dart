import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

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
      TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Text(
              buttonText,
              style: AppStyles.semiBold13.copyWith(
                color: isLight
                    ? AppColors.lightPrimaryColor
                    : AppColors.primaryColor,
              ),
            ),
          ),
          const TextSpan(text: ' '),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              onTap: onPressed,
              child: Text(
                normalText,
                style: AppStyles.semiBold13.copyWith(
                  color: const Color(0XFF949D9E),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
