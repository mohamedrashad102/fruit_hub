part of 'login_cubit.dart';

abstract class LoginCubitState {}

class LoginInitialState extends LoginCubitState {}

class LoginLoadingState extends LoginCubitState {}

class LoginSuccessState extends LoginCubitState {}

class LoginFailureState extends LoginCubitState {
  final String message;
  LoginFailureState(this.message);
}
