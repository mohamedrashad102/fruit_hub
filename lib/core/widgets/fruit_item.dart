import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:gap/gap.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF3F5F7),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite_border,
            ),
          ),
          Image.asset(Assets.imagesStrawberry),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'فراولة',
                      style: AppStyles.semiBold13,
                    ),
                    const Gap(5),
                    Text(
                      '30جنية / الكيلو',
                      style: AppStyles.bold13.copyWith(
                        color: const Color(0xfff4a91f),
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                alignment: Alignment.bottomLeft,
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
