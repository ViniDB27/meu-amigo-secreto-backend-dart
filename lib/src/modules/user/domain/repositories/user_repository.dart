import '../entities/user_entity.dart';
import '../usecases/create_new_user.dart';

abstract class UserRepository {
  Future<UserEntity> createNewUser(CreateNewUserParas params);
}
