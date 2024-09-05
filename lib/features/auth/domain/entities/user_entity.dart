class UserEntity {
  final String name;
  final String email;
  final String id;

  UserEntity({
    required this.name,
    required this.email,
    required this.id,
  });

  UserEntity copyWith({
    String? name,
    String? email,
    String? id,
  }) {
    return UserEntity(
      name: name ?? this.name,
      email: email ?? this.email,
      id: id ?? this.id,
    );
  }
}
