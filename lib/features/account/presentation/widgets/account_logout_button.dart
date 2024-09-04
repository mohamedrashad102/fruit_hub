import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AccountLogoutButton extends StatelessWidget {
  const AccountLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: double.infinity,
      color: const Color(0XFFEBF9F1),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(15),
      child: Text(
        'تسجيل الخروج',
        style: AppStyles.bold16.copyWith(
          color: const Color(0XFF1B5E37),
        ),
      ),
    );
  }
}
