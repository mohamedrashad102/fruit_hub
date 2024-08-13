import 'package:firebase_auth/firebase_auth.dart';

class UserEntity {
  final String name;
  final String email;
  final String id;

  UserEntity({
    required this.name,
    required this.email,
    required this.id,
  });

  factory UserEntity.fromUser(User user) {
    return UserEntity(
      name: user.displayName ?? '',
      email: user.email ?? '',
      id: user.uid,
    );
  }


  factory UserEntity.fromMap(Map<String, dynamic> json) => UserEntity(
        name: json["name"],
        email: json["email"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "id": id,
      };
}
