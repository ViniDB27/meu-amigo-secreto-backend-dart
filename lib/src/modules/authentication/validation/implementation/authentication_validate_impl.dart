import 'package:backend/src/modules/authentication/presentation/errors/authentication_error.dart';
import 'package:string_validator/string_validator.dart';

import '../../domain/usecases/signin_with_email_and_password.dart';
import '../authentication_validate.dart';

class AuthenticationValidateImpl extends AuthenticationValidate {
  @override
  SignInWithEmailAndPasswordParams validateRequestBody(dynamic body) {
    
    if (body['email'].toString().isEmpty) {
      throw AuthenticationException(400, 'Email is required');
    }

    if(!isEmail(body['email'])){
      throw AuthenticationException(400, 'Email is invalid');
    }

    if (body['password'].toString().isEmpty) {
      throw AuthenticationException(400, 'Password is required');
    }

    return SignInWithEmailAndPasswordParams(
      email: body['email'],
      password: body['password'],
    );
  }
}
