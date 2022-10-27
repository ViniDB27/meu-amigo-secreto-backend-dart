import 'package:backend/src/core/services/prisma/prisma_client.dart';
import 'package:backend/src/modules/authentication/external/datasources/account_datasource_impl.dart';
import 'package:backend/src/modules/authentication/infra/datasources/account_datasource.dart';
import 'package:backend/src/modules/authentication/presentation/errors/authentication_error.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class PrismaClientSpy extends Mock implements PrismaClient {}

void main() {
  late AccountDatasource datasource;
  late PrismaClient prismaClient;

  setUp(() {
    prismaClient = PrismaClientSpy();
    datasource = AccountDatasourceImpl(prismaClient);
  });

  test(
      'Should AccountDatasourceImpl.signInWithEmailAndPassword return  Map<String, dynamic> if execute with success ',
      () async {
    when(
      () => prismaClient.user.findUnique(
        where: UserWhereUniqueInput(
          email: 'teste@teste.com',
        ),
      ),
    ).thenAnswer(
      (_) async => User(
        id: 'any_id',
        name: 'any_name',
        password: 'any_password',
        email: 'teste@teste.com',
        gender: Gender.MALE,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    );

    final result = await datasource.signInWithEmailAndPassword(
        email: 'teste@teste.com', password: 'any_password');

    expect(result, isA<Map<String, dynamic>>());
  });
}
