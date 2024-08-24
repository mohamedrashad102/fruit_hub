import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';

class SendCodeButton extends StatelessWidget {
  const SendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'ارسال الرمز',
      onPressed: () => context.push(AppRouter.verifyCodeView),
    );
  }
}
