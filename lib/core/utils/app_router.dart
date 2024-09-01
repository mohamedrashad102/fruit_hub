import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/data/cubits/login_cubit.dart';
import '../../features/auth/data/cubits/sign_up_cubit.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/auth/presentation/views/verify_code_view.dart';
import '../../features/bottom_navigation/presentation/views/bottom_navigation_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../helpers/singleton.dart';

class AppRouter {
  static const onBoardingView = '/onBoardingView';
  static const loginView = '/loginView';
  static const signUpView = '/signUpView';
  static const forgetPasswordView = '/forgetPasswordView';
  static const verifyCodeView = '/verifyCodeView';
  static const newPasswordView = '/newPasswordView';
  static const homeView = '/homeView';
  static const bottomNavigation = '/bottomNavigation';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginCubit(
            authRepo: Singleton.authRepoImpl,
          ),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(
            authRepo: Singleton.authRepoImpl,
            dataBaseServices: Singleton.firestoreServices,
          ),
          child: const SignUpView(),
        ),
      ),
      GoRoute(
        path: forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: verifyCodeView,
        builder: (context, state) => const VerifyCodeView(),
      ),
      GoRoute(
        path: newPasswordView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bottomNavigation,
        builder: (context, state) => const BottomNavigationView(),
      ),
    ],
  );
}
