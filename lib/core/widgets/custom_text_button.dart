import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLight = false,
    this.fontSize,
    this.color,
  });

  final String text;
  final void Function()? onPressed;
  final bool isLight;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.semiBold13.copyWith(
          fontSize: fontSize,
          color: color ??
              (isLight ? AppColors.lightPrimaryColor : AppColors.primaryColor),
        ),
      ),
    );
  }
}
