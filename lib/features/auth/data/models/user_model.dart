import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.id,
  });

  factory UserModel.fromUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      id: user.uid,
    );
  }

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        email: json["email"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "id": id,
      };

  factory UserModel.fromUserEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      id: user.id,
    );
  }

  UserEntity toUserEntity() => UserEntity(
        name: name,
        email: email,
        id: id,
      );
}
