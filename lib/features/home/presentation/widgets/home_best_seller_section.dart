import 'package:flutter/material.dart';
import 'home_best_seller_head.dart';
import 'package:gap/gap.dart';

import 'home_best_seller_body.dart';

class HomeBestSellerSection extends StatelessWidget {
  const HomeBestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeBestSellerHead(),
        Gap(12),
        HomeBestSellerBody(),
      ],
    );
  }
}
