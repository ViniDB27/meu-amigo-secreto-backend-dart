import 'package:backend/src/modules/user/domain/entities/user_entity.dart';
import 'package:backend/src/modules/user/domain/repositories/user_repository.dart';
import 'package:backend/src/modules/user/domain/usecases/create_new_user.dart';
import 'package:backend/src/modules/user/infra/usecases/create_new_user_impl.dart';
import 'package:backend/src/modules/user/presentation/errors/user_error.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class UserRepositorySpy extends Mock implements UserRepository {}

void main() {
  late CreateNewUser usecase;
  late UserRepository repository;

  setUp(() {
    repository = UserRepositorySpy();

    usecase = CreateNewUserImpl(repository);
  });

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

  group("CreateNewUserImpl", () {
    test('should return UserEntity if execute with success',
        () async {
      when(() => repository.createNewUser(mockUseCaseParams))
          .thenAnswer((_) async => mockEntity);

      final result = await usecase(mockUseCaseParams);

      expect(result, isA<UserEntity>());
    });

    test(
        'should return UserException if execute without success',
        () async {
      when(() => repository.createNewUser(mockUseCaseParams))
          .thenThrow(UserException(500, "Erro interno no servidor"));

      final result = usecase(mockUseCaseParams);

      expect(result, throwsA(isA<UserException>()));
    });
  });
}
