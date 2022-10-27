import 'package:backend/src/modules/user/domain/entities/user_entity.dart';
import 'package:backend/src/modules/user/domain/usecases/create_new_user.dart';
import 'package:backend/src/modules/user/presentation/controllers/implementation/authentication_controller_impl.dart';
import 'package:backend/src/modules/user/presentation/controllers/user_controller.dart';
import 'package:backend/src/modules/user/presentation/errors/user_error.dart';
import 'package:backend/src/modules/user/validation/user_validate.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:test/test.dart';

class CreateNewUserSpy extends Mock implements CreateNewUser {}

class UserValidateSpy extends Mock implements UserValidate {}

class ModularArgumentsSpy extends Mock implements ModularArguments {}

void main() {
  late UserController controller;
  late CreateNewUser usecase;
  late UserValidate validate;
  late ModularArguments arguments;

  setUp(() {
    usecase = CreateNewUserSpy();
    validate = UserValidateSpy();

    controller = UserControllerImpl(
      usecase: usecase,
      validate: validate,
    );

    arguments = ModularArgumentsSpy();
  });

  const mockArgumentsData = {
    "name": "name",
    'email': 'teste@teste.com',
    'password': '123456',
    "gender": "MALE",
  };

  final mockUseCaseParams = CreateNewUserParams(
    name: "name",
    email: "teste@teste.com",
    password: "123456",
    gender: "MALE",
  );

  final mockEntity = UserEntity(
    id: "id",
    name: "name",
    email: "teste@teste.com",
    gender: Gender.MALE,
  );

  group("UserControllerImpl", () {
    group("createNewUser", () {
      test(
          "Should return Response with status code equal 200 if execute with success",
          () async {
        when(() => arguments.data).thenAnswer((_) => mockArgumentsData);

        when(() => validate.validateRequestBody(mockArgumentsData))
            .thenAnswer((_) => mockUseCaseParams);

        when(() => usecase(mockUseCaseParams))
            .thenAnswer((_) async => mockEntity);

        final result = await controller.createNewUser(arguments);

        expect(result, isA<Response>());
        expect(result.statusCode, 200);
      });

      test(
          "Should return Response with status code not equal 200 if execute with success",
          () async {
        when(() => arguments.data).thenAnswer((_) => mockArgumentsData);

        when(() => validate.validateRequestBody(mockArgumentsData))
            .thenAnswer((_) => mockUseCaseParams);

        when(() => usecase(mockUseCaseParams))
            .thenThrow(UserException(500, "Erro interno do servidor"));

        final result = await controller.createNewUser(arguments);

        expect(result, isA<Response>());
        expect(result.statusCode, isNot(200));
      });
    });
  });
}
