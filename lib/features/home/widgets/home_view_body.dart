import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/widgets/custom_search_bar.dart';
import 'package:fruit_hub/k.dart';
import 'package:gap/gap.dart';

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
          Gap(12),
          SizedBox(
            height: 158,
            child: HomeOffersSection(),
          ),
        ],
      ),
    );
  }
}

class HomeOffersSection extends StatelessWidget {
  const HomeOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      controller: PageController(
        initialPage: 0,
        viewportFraction: 0.99,
      ),
      itemBuilder: (context, index) {
        return Image.asset(
          index.isEven ? Assets.imagesOffer2 : Assets.imagesOffer1,
        );
      },
      itemCount: 20,
    );
  }
}
