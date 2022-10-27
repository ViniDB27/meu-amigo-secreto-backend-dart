import '../entities/user_entity.dart';

abstract class CreateNewUser {
  Future<UserEntity> call(CreateNewUserParas params);
}

class CreateNewUserParas {
  final String name;
  final String email;
  final String password;
  final String gender;

  CreateNewUserParas({
    required this.name,
    required this.email,
    required this.password,
    required this.gender,
  });
}
