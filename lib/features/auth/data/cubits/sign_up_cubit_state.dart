part of 'sign_up_cubit.dart';

abstract class SignUpCubitState {}

class SignUpInitialState extends SignUpCubitState {}

class SignUpLoadingState extends SignUpCubitState {}

class SignUpSuccessState extends SignUpCubitState {}

class SignUpFailureState extends SignUpCubitState {
  final String message;
  SignUpFailureState(this.message);
}
