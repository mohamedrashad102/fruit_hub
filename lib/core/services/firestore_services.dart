import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../features/auth/data/models/user_model.dart';
import '../../features/auth/domain/entities/user_entity.dart';
import '../helpers/print.dart';
import '../models/failure_model.dart';
import '../utils/app_keys.dart';
import 'database_services.dart';

class FirestoreServices implements DatabaseServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<Failure, void>> saveUserData(UserEntity user) async {
    try {
      final userModel = UserModel.fromUserEntity(user);
      await _firestore
          .collection(AppKeys.users)
          .doc(user.id)
          .set(userModel.toMap());
      return const Right(null);
    } on Exception catch (e) {
      Print.error(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUserData(String userId) async {
    try {
      final snapshot =
          await _firestore.collection(AppKeys.users).doc(userId).get();
      if (snapshot.exists) {
        final userModel = UserModel.fromMap(snapshot.data()!);
        return Right(userModel);
      } else {
        Print.error('User not found');
        return Left(Failure('User not found'));
      }
    } on Exception catch (e) {
      Print.error(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteUserData(String userId) async {
    try {
      await _firestore.collection(AppKeys.users).doc(userId).delete();
      return const Right(null);
    } on Exception catch (e) {
      Print.error(e.toString());
      return Left(Failure(e.toString()));
    }
  }
}
