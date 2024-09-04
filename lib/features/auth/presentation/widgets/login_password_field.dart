import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_password_text_field.dart';
import '../../data/cubits/login_cubit.dart';

class LoginPasswordField extends StatelessWidget {
  const LoginPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPasswordTextField(
      hintText: 'كلمة المرور',
      onChanged: context.read<LoginCubit>().changePassword,
    );
  }
}
