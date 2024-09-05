import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_password_text_field.dart';
import '../../data/cubits/sign_up_cubit.dart';

class SignUpPasswordField extends StatelessWidget {
  const SignUpPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPasswordTextField(
      hintText: 'كلمة المرور',
      onChanged: (value) => context.read<SignUpCubit>().password = value,
    );
  }
}
