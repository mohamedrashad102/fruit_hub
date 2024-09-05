import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/auth_services.dart';
import '../models/user_model.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit({
    required this.authServices,
  }) : super(LoginInitialState());

  final AuthServices authServices;

  String _email = '';
  String _password = '';
  final fromKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.always;

  void changeEmail(String value) => _email = value;
  void changePassword(String value) => _password = value;

  Future<void> loginWithEmailAndPassword() async {
    if (_formNotValid()) return;
    emit(LoginLoadingState());
    final result = await authServices.signInWithEmailAndPassword(
      email: _email,
      password: _password,
    );
    result.fold(
      (failure) => emit(LoginFailureState(failure.message)),
      (user) => emit(LoginSuccessState(UserModel.fromUserEntity(user))),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoadingState());
    final result = await authServices.signInWithGoogle();
    result.fold(
      (failure) => emit(LoginFailureState(failure.message)),
      (user) => emit(LoginSuccessState(UserModel.fromUserEntity(user))),
    );
  }

  Future<void> loginWithFacebook() async {
    emit(LoginLoadingState());
    final result = await authServices.signInWithFacebook();
    result.fold(
      (failure) => emit(LoginFailureState(failure.message)),
      (user) => emit(LoginSuccessState(UserModel.fromUserEntity(user))),
    );
  }

  bool _formNotValid() {
    if (!fromKey.currentState!.validate()) {
      autoValidateMode = AutovalidateMode.onUserInteraction;
    }
    return !fromKey.currentState!.validate();
  }
}
