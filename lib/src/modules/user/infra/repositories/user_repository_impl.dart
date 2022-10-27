import 'package:backend/src/modules/user/infra/models/user_model.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/create_new_user.dart';
import '../datasources/user_datasource.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDatasource datasource;

  UserRepositoryImpl(this.datasource);

  @override
  Future<UserEntity> createNewUser(CreateNewUserParas params) async {
    final userMap = await datasource.createNewUser(params);

    return UserModel.fromJson(userMap).toEntity;
  }
}
