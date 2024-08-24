import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';

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
