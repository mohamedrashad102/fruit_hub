import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_search_bar.dart';
import 'package:gap/gap.dart';

import 'home_best_seller_section.dart';
import 'home_offers_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
            CustomSearchBar(),
            Gap(12),
            SizedBox(
              height: 160,
              child: HomeOffersSection(),
            ),
            Gap(12),
            HomeBestSellerSection(),
          ],
        ),
      ),
    );
  }
}
