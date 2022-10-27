
import '../domain/usecases/create_new_user.dart';

abstract class UserValidate {
  CreateNewUserParas validateRequestBody(dynamic body);
}