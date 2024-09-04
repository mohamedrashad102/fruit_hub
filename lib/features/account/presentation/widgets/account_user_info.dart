import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';

class AccountUserInfo extends StatelessWidget {
  const AccountUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              radius: 36,
              backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D4D35AQFlWiD8IZnEBw/profile-framedphoto-shrink_400_400/profile-framedphoto-shrink_400_400/0/1719355084632?e=1726056000&v=beta&t=HIrsRuxKdZW13OZsgT1VhSYFs8OQxzE0wEHYHA53iwQ',
              ),
            ),
            Positioned(
              bottom: -10,
              child: Image.asset(
                Assets.imagesCameraIcon,
              ),
            ),
          ],
        ),
        const Gap(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'محمد رشاد',
                style: AppStyles.bold13.copyWith(
                  color: const Color(0XFF131F46),
                ),
              ),
              Text(
                'mohamedrashad@gmail.com',
                style: AppStyles.regular13.copyWith(
                  color: const Color(0XFF888FA0),
                ),
                textDirection: TextDirection.ltr,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
