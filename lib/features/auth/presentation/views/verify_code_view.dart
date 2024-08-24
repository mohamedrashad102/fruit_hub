import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../k.dart';
import '../widgets/re_send_code_button.dart';
import '../widgets/verify_code_field.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'التحقق من رمز التحقق',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: K.horizontalPadding,
          vertical: K.verticalPadding,
        ),
        child: Column(
          children: [
            Text(
              'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي Maxxx@email.com',
              style: AppStyles.semiBold16.copyWith(
                color: const Color(0xff616A6B),
              ),
            ),
            const Gap(20),
            const VerifyCodeField(),
            const ReSendCodeButton(),
          ],
        ),
      ),
    );
  }
}
