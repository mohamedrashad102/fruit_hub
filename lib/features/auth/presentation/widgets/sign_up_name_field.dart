import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/validator.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';
import 'package:fruit_hub/features/auth/data/cubits/sign_up_cubit.dart';

class SignUpNameField extends StatelessWidget {
  const SignUpNameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'الاسم كامل',
      onChanged: (value) => context.read<SignUpCubit>().name = value,
      validator: Validator.validateName,
    );
  }
}
