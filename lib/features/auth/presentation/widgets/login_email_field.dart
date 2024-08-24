import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';

import '../../../../core/helpers/validator.dart';
import '../../data/cubits/login_cubit.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'البريد الالكتروني',
      validator: Validator.validateEmail,
      onChanged: context.read<LoginCubit>().changeEmail,
    );
  }
}
