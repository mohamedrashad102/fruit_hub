import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_text_field.dart';

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
