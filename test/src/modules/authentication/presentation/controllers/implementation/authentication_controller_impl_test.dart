import 'package:backend/src/modules/authentication/domain/entities/account_entity.dart';
import 'package:backend/src/modules/authentication/presentation/errors/authentication_error.dart';
import 'package:backend/src/modules/authentication/domain/usecases/signin_with_email_and_password.dart';
import 'package:backend/src/modules/authentication/presentation/controllers/authentication_controller.dart';
import 'package:backend/src/modules/authentication/presentation/controllers/implementation/authentication_controller_impl.dart';
import 'package:backend/src/modules/authentication/validation/authentication_validate.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:test/test.dart';

class SignInWithEmailAndPasswordSpy extends Mock
    implements SignInWithEmailAndPassword {}

class AuthenticationValidateSpy extends Mock implements AuthenticationValidate {
}

class ModularArgumentsSpy extends Mock implements ModularArguments {}

void main() {
  late AuthenticationController controller;
  late SignInWithEmailAndPassword usecase;
  late AuthenticationValidate validate;
  late ModularArguments arguments;

  setUp(() {
    validate = AuthenticationValidateSpy();
    usecase = SignInWithEmailAndPasswordSpy();
    controller = AuthenticationControllerImpl(
      usecase: usecase,
      validate: validate,
    );
    arguments = ModularArgumentsSpy();
  });

  const mockArgumentsData = {'email': 'teste@teste.com', 'password': '123456'};
  final mockUsecaseParams = SignInWithEmailAndPasswordParams(
    email: mockArgumentsData['email']!,
    password: mockArgumentsData['password']!,
  );
  final mockAccountEntity = AccountEntity(
    accessToken: "accessToken",
    refreshToken: "refreshToken",
  );

  group("AuthenticationControllerImpl", () {
    group("signInWithEmailAndPassword", () {
      test(
          'Should return Response with status code equal 200 if execute with success',
          () async {
        when(() => arguments.data).thenAnswer((_) => mockArgumentsData);

        when(() => validate.validateRequestBody(mockArgumentsData))
            .thenAnswer((_) => mockUsecaseParams);

        when(() => usecase(mockUsecaseParams))
            .thenAnswer((_) async => mockAccountEntity);

        final result = await controller.signInWithEmailAndPassword(arguments);

        expect(result, isA<Response>());
        expect(result.statusCode, 200);
      });

      test(
          'Should return Response with status code not equal 200 if execute without success',
          () async {
        when(() => arguments.data).thenAnswer((_) => mockArgumentsData);

        when(() => validate.validateRequestBody(mockArgumentsData))
            .thenAnswer((_) => mockUsecaseParams);

        when(() => usecase(mockUsecaseParams)).thenThrow(
            AuthenticationException(500, "Erro interno do servidor"));

        final result = await controller.signInWithEmailAndPassword(arguments);

        expect(result, isA<Response>());
        expect(result.statusCode, isNot(200));
      });
    });
  });
}
