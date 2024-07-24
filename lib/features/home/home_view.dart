import 'package:flutter/material.dart';

import 'widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeViewAppBar(),
    );
  }
}
