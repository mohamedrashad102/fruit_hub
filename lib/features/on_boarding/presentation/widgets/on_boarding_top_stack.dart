import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/widgets/custom_visibiltiy.dart';
import 'package:svg_flutter/svg.dart';

class OnBoardingTopStack extends StatelessWidget {
  const OnBoardingTopStack({
    super.key,
    required this.logoPath,
    required this.color,
    required this.isSkip,
    this.onPressed,
  });

  final String logoPath;
  final Color color;
  final bool isSkip;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              Assets.imagesOnBoardingBg,
              colorFilter: ColorFilter.mode(color, BlendMode.srcATop),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(logoPath),
          ),
          CustomVisibility(
            isVisible: isSkip,
            child: Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  'تخط',
                  style: AppStyles.regular13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
