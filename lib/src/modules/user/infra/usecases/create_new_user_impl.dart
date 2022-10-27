import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/create_new_user.dart';

class CreateNewUserImpl extends CreateNewUser {
  final UserRepository repository;

  CreateNewUserImpl(this.repository);

  Future<UserEntity> call(CreateNewUserParams params) async {
    return repository.createNewUser(params);
  }
}
