import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/services/data_base_services.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

part 'sign_up_cubit_state.dart';

class SignUpCubit extends Cubit<SignUpCubitState> {
  SignUpCubit({
    required this.authRepo,
    required this.dataBaseServices,
  }) : super(SignUpInitialState());

  final AuthRepo authRepo;
  final DataBaseServices dataBaseServices;

  String name = '';
  String email = '';
  String password = '';
  bool isAgreedWithTerms = false;
  final fromKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.always;

  Future<void> signUpWithEmailAndPassword() async {
    if (_formNotValid()) return;
    if (_notAgreedWithTerms()) return;
    emit(SignUpLoadingState());

    // Sign up user
    final result = await authRepo.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(SignUpFailureState(failure.message)),
      (user) {
        // Save user data
        final updatedUser = user.copyWith(name: name);
        dataBaseServices.saveUserData(updatedUser);
        emit(SignUpSuccessState());
      },
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
    }
    return !fromKey.currentState!.validate();
  }
}
