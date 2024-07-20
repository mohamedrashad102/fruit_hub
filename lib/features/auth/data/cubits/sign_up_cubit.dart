import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

part 'sign_up_cubit_state.dart';

class SignUpCubit extends Cubit<SignUpCubitState> {
  SignUpCubit({
    required this.authRepo,
  }) : super(SignUpInitialState());

  final AuthRepo authRepo;

  String name = '';
  String email = '';
  String password = '';
  bool isAgreedWithTerms = false;
  AutovalidateMode autoValidateMode = AutovalidateMode.always;

  final fromKey = GlobalKey<FormState>();

  Future<void> signUpWithEmailAndPassword() async {
    emit(SignUpLoadingState());
    if (_formNotValid()) return;
    if (_notAgreedWithTerms()) return;
    final result = await authRepo.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(SignUpFailureState(failure.message)),
      (user) => emit(SignUpSuccessState()),
    );
  }

  bool _notAgreedWithTerms() {
    if (!isAgreedWithTerms) {
      emit(SignUpFailureState(
          'يجب عليك الموافقة على الشروط والأحكام الخاصة بنا'));
    }
    return !isAgreedWithTerms;
  }

  bool _formNotValid() {
    if (!fromKey.currentState!.validate()) {
      autoValidateMode = AutovalidateMode.onUserInteraction;
      emit(SignUpFailureState('يجب عليك ملء جميع الحقول'));
    }
    return !fromKey.currentState!.validate();
  }
}
