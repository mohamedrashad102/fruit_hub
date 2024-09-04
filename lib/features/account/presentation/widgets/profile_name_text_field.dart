import '../../../../core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ProfileNameTextField extends StatelessWidget {
  const ProfileNameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      hintText: 'محمد رشاد',
      suffixIcon: Icon(
        Icons.edit,
        color: Colors.grey,
      ),
    );
  }
}
