import '../domain/usecases/signin_with_email_and_password.dart';

abstract class AuthenticationValidate {
  SignInWithEmailAndPasswordParams validateRequestBody(dynamic body);
}