import '../entities/user_entity.dart';

abstract class CreateNewUser {
  Future<UserEntity> call(CreateNewUserParams params);
}

class CreateNewUserParams {
  final String name;
  final String email;
  final String password;
  final String gender;

  CreateNewUserParams({
    required this.name,
    required this.email,
    required this.password,
    required this.gender,
  });
}
