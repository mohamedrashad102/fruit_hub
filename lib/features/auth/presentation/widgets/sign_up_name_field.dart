import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/validator.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../data/cubits/sign_up_cubit.dart';

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
