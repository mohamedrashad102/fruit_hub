import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/widgets/custom_text_field.dart';

import '../../../../core/helpers/validator.dart';
import '../../data/cubits/login_cubit.dart';

class LoginPasswordField extends HookWidget {
  const LoginPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);
    return CustomTextField(
      hintText: 'كلمة المرور',
      obscureText: !isVisible.value,
      suffixIcon: IconButton(
        onPressed: () {
          isVisible.value = !isVisible.value;
        },
        icon: Icon(
          isVisible.value ? Icons.visibility : Icons.visibility_off,
          color: const Color(0XFFC9CECF),
        ),
      ),
      validator: Validator.validatePassword,
      onChanged: context.read<LoginCubit>().changePassword,
    );
  }
}
