import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_search_bar.dart';
import 'package:fruit_hub/k.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: K.horizontalPadding,
        vertical: K.verticalPadding,
      ),
      child: Column(
        children: [
          CustomSearchBar(),
        ],
      ),
    );
  }
}
