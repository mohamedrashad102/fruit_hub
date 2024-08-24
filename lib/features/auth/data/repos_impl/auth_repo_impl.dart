import 'package:dartz/dartz.dart';
import '../../domain/entities/user_entity.dart';

import '../../../../core/models/failure_model.dart';
import '../../../../core/services/fire_auth_services.dart';
import '../../domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final result = await FireAuthServices.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.fold(
      (failure) => Left(failure),
      (user) => Right(UserEntity.fromUser(user)),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final result = await FireAuthServices.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.fold(
      (failure) => Left(failure),
      (user) => Right(UserEntity.fromUser(user)),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    final result = await FireAuthServices.signInWithGoogle();
    return result.fold(
      (failure) => Left(failure),
      (user) => Right(UserEntity.fromUser(user)),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    final result = await FireAuthServices.signInWithFacebook();
    return result.fold(
      (failure) => Left(failure),
      (user) => Right(UserEntity.fromUser(user)),
    );
  }
}
