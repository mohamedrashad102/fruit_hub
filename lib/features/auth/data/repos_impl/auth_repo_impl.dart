import 'package:dartz/dartz.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

import '../../../../core/models/failure_model.dart';
import '../../../../core/services/auth_services.dart';
import '../../domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final result = await AuthServices.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
    return result.fold(
      (failure) => Left(failure),
      (user) => Right(UserEntity.fromUser(user)),
    );
  }
}
