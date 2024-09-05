import 'package:dartz/dartz.dart';

import '../../features/auth/domain/entities/user_entity.dart';
import '../models/failure_model.dart';

abstract class DatabaseServices {
  Future<Either<Failure, void>> saveUserData(UserEntity user);

  Future<Either<Failure, UserEntity>> getUserData(String userId);

  Future<Either<Failure, void>> deleteUserData(String userId);
}
