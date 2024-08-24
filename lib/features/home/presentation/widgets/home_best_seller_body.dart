import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/fruit_item.dart';

class HomeBestSellerBody extends StatelessWidget {
  const HomeBestSellerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        crossAxisSpacing: 8,
        mainAxisSpacing: 6,
      ),
      itemBuilder: (context, index) {
        return const FruitItem();
      },
      itemCount: 10,
    );
  }
}
