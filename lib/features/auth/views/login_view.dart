import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/extensions/show_snack_bar_extension.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:fruit_hub/features/auth/data/cubits/login_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'تسجيل الدخول',
      ),
      body: BlocConsumer<LoginCubit, LoginCubitState>(
        listener: (context, state) {
          if (state is LoginFailureState) {
            context.showSnackBar(state.message);
          } else if (state is LoginSuccessState) {
            context.showSnackBar('تم تسجيل الدخول بنجاح');
            context.go(AppRouter.homeView);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is LoginLoadingState,
            child: const LoginViewBody(),
          );
        },
      ),
    );
  }
}
