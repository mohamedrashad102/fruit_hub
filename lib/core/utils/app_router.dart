import 'package:fruit_hub/features/on_boarding/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/views/splash_view.dart';

class AppRouter {
  static const onBoarding = '/onBoarding';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
