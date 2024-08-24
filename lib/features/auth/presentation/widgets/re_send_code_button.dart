import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_text_button.dart';

class ReSendCodeButton extends StatelessWidget {
  const ReSendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: 'اعادة ارسال الرمز',
      onPressed: () {},
      isLight: true,
    );
  }
}
