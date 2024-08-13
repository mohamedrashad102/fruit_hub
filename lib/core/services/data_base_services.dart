import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

abstract class DataBaseServices {
  Future<void> saveUserData(UserEntity user);
}
