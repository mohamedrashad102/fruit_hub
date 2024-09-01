import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/views/login_view.dart';
import '../../../home/presentation/views/home_view.dart';

class BottomNavigationView extends HookWidget {
  const BottomNavigationView({super.key});

  static const _pages = <Widget>[
    HomeView(),
    HomeView(),
    HomeView(),
    LoginView(),
  ];

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);
    final selectedIndex = useState(0);

    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          selectedIndex.value = index;
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: selectedIndex.value,
        items: [
          _bottomNavyBarItem(
            icon: Image.asset(
              selectedIndex.value == 0
                  ? Assets.imagesSelectedHome
                  : Assets.imagesUnselectedHome,
            ),
            title: 'الرئيسية',
          ),
          _bottomNavyBarItem(
            icon: Image.asset(
              selectedIndex.value == 1
                  ? Assets.imagesSelectedProducts
                  : Assets.imagesUnselectedProducts,
            ),
            title: 'المنتجات',
          ),
          _bottomNavyBarItem(
            icon: Image.asset(
              selectedIndex.value == 2
                  ? Assets.imagesSelectedCart
                  : Assets.imagesUnselectedCart,
            ),
            title: 'سلة التسوق',
          ),
          _bottomNavyBarItem(
            icon: Image.asset(
              selectedIndex.value == 3
                  ? Assets.imagesSelectedAccount
                  : Assets.imagesUnselectedAccount,
            ),
            title: 'حسابي',
          ),
        ],
        onItemSelected: (value) {
          selectedIndex.value = value;
          pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        blurRadius: 10.0,
        borderRadius: BorderRadius.circular(30),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    );
  }

  BottomNavyBarItem _bottomNavyBarItem({
    required Widget icon,
    required String title,
  }) {
    return BottomNavyBarItem(
      icon: icon,
      title: Text(
        title,
        style: AppStyles.semiBold12,
      ),
      activeColor: Colors.grey,
      inactiveColor: Colors.green,
      textAlign: TextAlign.right,
    );
  }
}
