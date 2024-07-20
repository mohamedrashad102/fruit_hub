import 'package:firebase_auth/firebase_auth.dart';

class UserEntity {
  final String name;
  final String email;
  final String password;
  final String id;

  UserEntity({
    required this.name,
    required this.email,
    required this.password,
    required this.id,
  });

  factory UserEntity.fromUser(User user) {
    return UserEntity(
      name: user.displayName ?? '',
      email: user.email ?? '',
      password: '',
      id: user.uid,
    );
  }
}
