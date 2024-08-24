import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    required this.iconPath,
    this.onPressed,
  });

  final String text;
  final String iconPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0XFFDDDFDF),
          ),
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            SvgPicture.asset(iconPath),
            const Spacer(),
            Text(
              text,
              style: AppStyles.semiBold16.copyWith(
                color: Colors.black,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
