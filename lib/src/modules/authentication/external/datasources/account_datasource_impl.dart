import '../../../../core/services/prisma/prisma_client.dart';
import '../../presentation/errors/authentication_error.dart';
import '../../infra/datasources/account_datasource.dart';

class AccountDatasourceImpl extends AccountDatasource {
  final PrismaClient prisma;

  AccountDatasourceImpl(this.prisma);

  @override
  Future<Map<String, dynamic>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await prisma.user.findUnique(
        where: UserWhereUniqueInput(
          email: email,
        ),
      );

      if (user == null) {
        throw AuthenticationException(403, 'Email ou senha invalida');
      }

      return user.toJson();
    } on Exception catch (e) {
      print(e.toString());
      throw AuthenticationException(500, 'Erro interno no servidor');
    } finally {
      await prisma.$disconnect();
    }
  }
}
