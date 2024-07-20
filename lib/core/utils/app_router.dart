import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/data/cubits/sign_up_cubit.dart';
import 'package:fruit_hub/features/auth/data/repos_impl/auth_repo_impl.dart';
import 'package:fruit_hub/features/auth/views/forget_password_view.dart';
import 'package:fruit_hub/features/auth/views/login_view.dart';
import 'package:fruit_hub/features/auth/views/sign_up_view.dart';
import 'package:fruit_hub/features/auth/views/verify_code_view.dart';
import 'package:fruit_hub/features/on_boarding/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/views/splash_view.dart';

class AppRouter {
  static const onBoardingView = '/onBoardingView';
  static const loginView = '/loginView';
  static const signUpView = '/signUpView';
  static const forgetPasswordView = '/forgetPasswordView';
  static const verifyCodeView = '/verifyCodeView';
  static const newPasswordView = '/newPasswordView';

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
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(
            authRepo: AuthRepoImpl(),
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
    ],
  );
}
