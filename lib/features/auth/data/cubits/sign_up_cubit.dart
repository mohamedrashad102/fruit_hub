import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/auth_services.dart';
import '../../../../core/services/database_services.dart';
import '../../domain/entities/user_entity.dart';

part 'sign_up_cubit_state.dart';

class SignUpCubit extends Cubit<SignUpCubitState> {
  SignUpCubit({
    required this.authServices,
    required this.databaseServices,
  }) : super(SignUpInitialState());

  final AuthServices authServices;
  final DatabaseServices databaseServices;

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
    final authResult = await authServices.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Get user data after sign up
    late UserEntity userEntity;
    final isAuthFailure = authResult.fold<bool>(
      (failure) {
        emit(SignUpFailureState(failure.message));
        return true;
      },
      (user) {
        userEntity = user;
        return false;
      },
    );

    if (isAuthFailure) return;

    // Save user data
    final updatedUser = userEntity.copyWith(name: name);
    final databaseResult = await databaseServices.saveUserData(updatedUser);
    databaseResult.fold(
      (failure) async {
        // Delete user authentication if saving user data failed
        await authServices.deleteUser();
        emit(SignUpFailureState(failure.message));
      },
      (_) => emit(SignUpSuccessState()),
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
