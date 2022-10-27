import 'package:backend/src/modules/user/domain/entities/user_entity.dart';
import 'package:backend/src/modules/user/domain/repositories/user_repository.dart';
import 'package:backend/src/modules/user/domain/usecases/create_new_user.dart';
import 'package:backend/src/modules/user/infra/datasources/user_datasource.dart';
import 'package:backend/src/modules/user/infra/repositories/user_repository_impl.dart';
import 'package:backend/src/modules/user/presentation/errors/user_error.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class UserDatasourceSpy extends Mock implements UserDatasource {}

void main() {
  late UserRepository repository;
  late UserDatasource datasource;

  setUp(() {
    datasource = UserDatasourceSpy();

    repository = UserRepositoryImpl(datasource);
  });

  final mockUseCaseParams = CreateNewUserParams(
    name: "name",
    email: "teste@teste.com",
    password: "123456",
    gender: "MALE",
  );

  Map<String, dynamic> userMapMock = {
    "id": "id",
    "name": "name",
    "email": "teste@teste.com",
    "gender": "MALE",
  };

  group("UserRepositoryImpl", () {
    group("createNewUser", () {
      test('Should return UserEntity if execute with success',
          () async {
        when(() => datasource.createNewUser(mockUseCaseParams))
            .thenAnswer((_) async => userMapMock);

        final result = await repository.createNewUser(mockUseCaseParams);

        expect(result, isA<UserEntity>());
      });

      test('Should return UserEntity if execute with success',
          () async {
        when(() => datasource.createNewUser(mockUseCaseParams))
            .thenThrow(UserException(500, "Erro interno no servidor"));

        final result = repository.createNewUser(mockUseCaseParams);

        expect(result, throwsA(isA<UserException>()));
      });
    });
  });
}
