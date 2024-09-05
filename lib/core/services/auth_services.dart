import 'package:dartz/dartz.dart';

import '../../features/auth/domain/entities/user_entity.dart';
import '../models/failure_model.dart';

abstract class AuthServices {
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> signInWithGoogle();

  Future<Either<Failure, UserEntity>> signInWithFacebook();

  Future<Either<Failure, void>> deleteUser();
}
