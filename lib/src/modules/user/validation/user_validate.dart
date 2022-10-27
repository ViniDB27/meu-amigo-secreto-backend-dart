
import '../domain/usecases/create_new_user.dart';

abstract class UserValidate {
  CreateNewUserParams validateRequestBody(dynamic body);
}