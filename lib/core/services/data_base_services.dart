import '../../features/auth/domain/entities/user_entity.dart';

abstract class DataBaseServices {
  Future<void> saveUserData(UserEntity user);
}
