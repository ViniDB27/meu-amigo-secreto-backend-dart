import 'package:backend/src/modules/authentication/presentation/errors/authentication_error.dart';
import 'package:backend/src/modules/authentication/domain/usecases/signin_with_email_and_password.dart';
import 'package:backend/src/modules/authentication/validation/authentication_validate.dart';
import 'package:backend/src/modules/authentication/validation/implementation/authentication_validate_impl.dart';
import 'package:test/test.dart';

void main() {
  late AuthenticationValidate validate;

  setUp(() {
    validate = AuthenticationValidateImpl();
  });

  test(
      'should AuthenticationValidateImpl throw AuthenticationException if email is empty',
      () async {
    final body = {
      'email': '',
      'password': '123456',
    };

    expect(() => validate.validateRequestBody(body),
        throwsA(isA<AuthenticationException>()));
  });
  
  test(
      'should AuthenticationValidateImpl throw AuthenticationException if email is invalid',
      () async {
    final body = {
      'email': 'teste',
      'password': '123456',
    };

    expect(() => validate.validateRequestBody(body),
        throwsA(isA<AuthenticationException>()));
  });

  test(
      'should AuthenticationValidateImpl throw AuthenticationException if password is empty',
      () async {
    final body = {
      'email': '',
      'password': '123456',
    };

    expect(() => validate.validateRequestBody(body),
        throwsA(isA<AuthenticationException>()));
  });

  test(
      'should AuthenticationValidateImpl return SignInWithEmailAndPasswordParams if email and password is correct',
      () async {
    final body = {
      'email': 'teste@teste.com',
      'password': '123456',
    };

    final result = validate.validateRequestBody(body);

    expect(result, isA<SignInWithEmailAndPasswordParams>());
  });
}
