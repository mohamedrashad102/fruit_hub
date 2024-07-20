import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/extensions/show_snack_bar_extension.dart';
import 'package:fruit_hub/features/auth/widgets/sign_up_view_body.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../data/cubits/sign_up_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'حساب جديد',
      ),
      body: BlocConsumer<SignUpCubit, SignUpCubitState>(
        listener: (context, state) {
          if (state is SignUpFailureState) {
            context.showSnackBar(state.message);
          } else if (state is SignUpSuccessState) {
            context.showSnackBar('تم التسجيل بنجاح');
            context.pop();
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SignUpLoadingState,
            child: const SignUpViewBody(),
          );
        },
      ),
    );
  }
}
