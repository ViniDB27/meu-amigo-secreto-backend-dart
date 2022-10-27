import '../../domain/usecases/create_new_user.dart';

abstract class UserDatasource {
  Future<Map<String, dynamic>> createNewUser(CreateNewUserParas params);
}
