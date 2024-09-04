import '../../../../core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileSaveChangesButton extends StatelessWidget {
  const ProfileSaveChangesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomButton(
      text: 'حفظ التغييرات',
      onPressed: null,
    );
  }
}
