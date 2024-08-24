import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.id,
  });

  factory UserModel.fromUserEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      id: user.id,
    );
  }
}
