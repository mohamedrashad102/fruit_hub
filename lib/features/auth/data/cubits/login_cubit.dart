import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/auth_services.dart';
import '../../../../core/services/database_services.dart';
import '../../domain/entities/user_entity.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit({
    required this.authServices,
    required this.databaseServices,
  }) : super(LoginInitialState());

  final AuthServices authServices;
  final DatabaseServices databaseServices;

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
      (user) => emit(LoginSuccessState()),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoadingState());

    // try to login
    final loginResult = await authServices.signInWithGoogle();

    // Get user data if login success
    UserEntity? userEntity;
    loginResult.fold(
      (failure) => emit(LoginFailureState(failure.message)),
      (user) => userEntity = user,
    );

    // login failure
    if (userEntity == null) return;

    // Save user data to database if first login (SIGN UP)
    final databaseResult = await databaseServices.saveUserData(userEntity!);
    databaseResult.fold(
      (failure) => emit(LoginFailureState(failure.message)),
      (success) => emit(LoginSuccessState()),
    );
  }

  Future<void> loginWithFacebook() async {
    emit(LoginLoadingState());

    // try to login
    final loginResult = await authServices.signInWithFacebook();

    // Get user data if login success
    UserEntity? userEntity;
    loginResult.fold(
      (failure) => emit(LoginFailureState(failure.message)),
      (user) {
        userEntity = user;
        emit(LoginSuccessState());
      },
    );

    // login failure
    if (userEntity == null) return;

    // Save user data to database if first login (SIGN UP)
    final databaseResult = await databaseServices.saveUserData(userEntity!);
    databaseResult.fold(
      (failure) => emit(LoginFailureState(failure.message)),
      (success) => emit(LoginSuccessState()),
    );
  }

  bool _formNotValid() {
    if (!fromKey.currentState!.validate()) {
      autoValidateMode = AutovalidateMode.onUserInteraction;
    }
    return !fromKey.currentState!.validate();
  }
}
