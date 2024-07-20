import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';

import '../../../core/helpers/validator.dart';
import '../data/cubits/sign_up_cubit.dart';

class SignUpEmailField extends StatelessWidget {
  const SignUpEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'البريد الالكتروني',
      onChanged: (value) => context.read<SignUpCubit>().email = value,
      validator: Validator.validateEmail,
    );
  }
}
