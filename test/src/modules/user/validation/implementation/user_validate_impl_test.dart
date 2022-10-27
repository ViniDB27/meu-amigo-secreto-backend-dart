import 'package:backend/src/modules/user/domain/usecases/create_new_user.dart';
import 'package:backend/src/modules/user/presentation/errors/user_error.dart';
import 'package:backend/src/modules/user/validation/implementation/user_validate_impl.dart';
import 'package:backend/src/modules/user/validation/user_validate.dart';
import 'package:test/test.dart';

void main() {
  late UserValidate validate;

  setUp(() {
    validate = UserValidateImpl();
  });

  group("UserValidateImpl.validateRequestBody", () {
    test('Should validateRequestBody throw UserException if email is empty.',
        () async {
      final body = {
        "name": "test",
        "email": "",
        "password": "123456",
        "gender": "MALE"
      };

      expect(() => validate.validateRequestBody(body),
          throwsA(isA<UserException>()));
    });

    test('Should validateRequestBody throw UserException if email is invalid.',
        () async {
      final body = {
        "name": "test",
        "email": "teste",
        "password": "123456",
        "gender": "MALE"
      };

      expect(() => validate.validateRequestBody(body),
          throwsA(isA<UserException>()));
    });

    test('Should validateRequestBody throw UserException if name is empty.',
        () async {
      final body = {
        "name": "",
        "email": "teste@teste.com",
        "password": "123456",
        "gender": "MALE"
      };

      expect(() => validate.validateRequestBody(body),
          throwsA(isA<UserException>()));
    });

    test('Should validateRequestBody throw UserException if password is empty.',
        () async {
      final body = {
        "name": "test",
        "email": "teste@teste.com",
        "password": "",
        "gender": "MALE"
      };

      expect(() => validate.validateRequestBody(body),
          throwsA(isA<UserException>()));
    });

    test('Should validateRequestBody throw UserException if gender is empty.',
        () async {
      final body = {
        "name": "test",
        "email": "teste@teste.com",
        "password": "123456",
        "gender": ""
      };

      expect(() => validate.validateRequestBody(body),
          throwsA(isA<UserException>()));
    });

    test('Should validateRequestBody throw UserException if gender is invalid.',
        () async {
      final body = {
        "name": "test",
        "email": "teste@teste.com",
        "password": "123456",
        "gender": "outracois"
      };

      expect(() => validate.validateRequestBody(body),
          throwsA(isA<UserException>()));
    });

    test('Should validateRequestBody return CreateNewUserParas if execute with success.',
        () async {
      final body = {
        "name": "test",
        "email":  "teste@teste.com",
        "password": "123456",
        "gender": "MALE"
      };

      final result = validate.validateRequestBody(body);

      expect(result, isA<CreateNewUserParas>());
    });
  });
}
