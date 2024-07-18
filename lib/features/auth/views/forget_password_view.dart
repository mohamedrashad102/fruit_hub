import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_styles.dart';
import '../../../k.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'نسيان كلمة المرور',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: K.horizontalPadding,
          vertical: K.verticalPadding,
        ),
        child: Column(
          children: [
            Text(
              'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
              style: AppStyles.semiBold16.copyWith(
                color: const Color(0xff616A6B),
              ),
            ),
            const Gap(15),
            const ForgetPasswordNumberField(),
            const Gap(20),
            const SendCodeButton(),
          ],
        ),
      ),
    );
  }
}

class ForgetPasswordNumberField extends StatelessWidget {
  const ForgetPasswordNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      hintText: 'رقم الهاتف',
      keyboardType: TextInputType.phone,
    );
  }
}

class SendCodeButton extends StatelessWidget {
  const SendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'ارسال الرمز',
      onPressed: () {},
    );
  }
}
