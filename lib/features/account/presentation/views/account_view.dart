import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'حسابي',
        backButton: false,
      ),
      body: AccountViewBody(),
    );
  }
}
