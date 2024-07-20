import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/mixed_text_button.dart';

import '../data/cubits/sign_up_cubit.dart';

class SignUpPrivacyPolicy extends HookWidget {
  const SignUpPrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final isAgreedWithTerms = useState(false);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: isAgreedWithTerms.value,
          checkColor: Colors.white,
          activeColor: AppColors.primaryColor,
          onChanged: (value) {
            isAgreedWithTerms.value = value!;
            context.read<SignUpCubit>().isAgreedWithTerms = value;
          },
        ),
        const Expanded(
          child: MixedTextButton(
            normalText: 'من خلال إنشاء حساب ، فإنك توافق على',
            buttonText: 'الشروط والأحكام الخاصة بنا',
            isLight: true,
          ),
        ),
      ],
    );
  }
}
