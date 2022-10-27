import 'package:backend/src/core/services/bcrypt/bcrypt_service.dart';
import 'package:backend/src/core/services/prisma/prisma_client.dart';
import 'package:backend/src/modules/user/domain/usecases/create_new_user.dart';
import 'package:backend/src/modules/user/external/datasources/user_datasource_impl.dart';
import 'package:backend/src/modules/user/infra/datasources/user_datasource.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class PrismaClientSpy extends Mock implements PrismaClient {}

class BCryptServiceSpy extends Mock implements BCryptService {}

void main() {
  late UserDatasource datasource;

  late PrismaClient prisma;
  late BCryptService bcrypt;

  setUp(() {
    prisma = PrismaClientSpy();
    bcrypt = BCryptServiceSpy();

    datasource = UserDatasourceImpl(
      bcrypt: bcrypt,
      prisma: prisma,
    );
  });

  final mockUseCaseParams = CreateNewUserParams(
    name: "name",
    email: "teste@teste.com",
    password: "123456",
    gender: "MALE",
  );

  final mockUser = User(
    id: 'any_id',
    name: 'any_name',
    password: 'any_password',
    email: 'teste@teste.com',
    gender: Gender.MALE,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  group("UserDatasourceImpl", () {
    group("createNewUser", () {
      test('Should return Map<String, dynamic> if execute with success',
          () async {
        when(() => bcrypt.generateHash(
              mockUseCaseParams.password,
            )).thenAnswer((_) => "hashedPassword");

        when(() => prisma.user.create(data: any(named: "data")))
            .thenAnswer((_) async => mockUser);

        final result = await datasource.createNewUser(mockUseCaseParams);

        expect(result, isA<Map<String, dynamic>>());
      });

      test('Should return Map<String, dynamic> if execute with success',
          () async {
        when(() => bcrypt.generateHash(
              mockUseCaseParams.password,
            )).thenAnswer((_) => "hashedPassword");

        when(() => prisma.user.create(data: any(named: "data")))
            .thenAnswer((_) async => mockUser);

        final result = await datasource.createNewUser(mockUseCaseParams);

        expect(result, isA<Map<String, dynamic>>());
      });
    });
  });
}
