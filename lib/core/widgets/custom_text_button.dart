import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLight = false,
    this.fontSize,
  });

  final String text;
  final void Function()? onPressed;
  final bool isLight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.semiBold13.copyWith(
          fontSize: fontSize,
          color: isLight ? AppColors.lightPrimaryColor : AppColors.primaryColor,
        ),
      ),
    );
  }
}
