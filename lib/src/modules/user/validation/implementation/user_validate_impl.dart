import 'package:string_validator/string_validator.dart';

import '../../domain/usecases/create_new_user.dart';
import '../../presentation/errors/user_error.dart';
import '../user_validate.dart';

class UserValidateImpl extends UserValidate {
  @override
  CreateNewUserParas validateRequestBody(dynamic body) {
    if (body['email'].toString().isEmpty) {
      throw UserException(400, 'Email is required');
    }

    if (!isEmail(body['email'].toString())) {
      throw UserException(400, 'Email is invalid');
    }

    if (body['name'].toString().isEmpty) {
      throw UserException(400, 'Name is required');
    }

    if (body['password'].toString().isEmpty) {
      throw UserException(400, 'Password is required');
    }

    if (body['gender'].toString().isEmpty) {
      throw UserException(400, 'Gender is required');
    }

    if (body['gender'].toString() != "MALE" &&
        body['gender'].toString() != "FEMALE" &&
        body['gender'].toString() != "NONBINARY") {
      throw UserException(400, 'Gender is invalid, use Values [MALE, FEMALE,  NONBINARY]');
    }

    return CreateNewUserParas(
      name: body['name'],
      email: body['email'],
      password: body['password'],
      gender: body['gender'],
    );
  }
}
