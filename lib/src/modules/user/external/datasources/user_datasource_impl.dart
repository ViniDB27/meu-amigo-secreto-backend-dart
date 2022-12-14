import 'package:backend/src/modules/user/domain/usecases/create_new_user.dart';
import 'package:backend/src/modules/user/presentation/errors/user_error.dart';

import '../../../../core/services/bcrypt/bcrypt_service.dart';
import '../../../../core/services/prisma/prisma_client.dart';
import '../../infra/datasources/user_datasource.dart';

class UserDatasourceImpl extends UserDatasource {
  final PrismaClient prisma;
  final BCryptService bcrypt;

  UserDatasourceImpl({
    required this.prisma,
    required this.bcrypt,
  });

  @override
  Future<Map<String, dynamic>> createNewUser(CreateNewUserParams params) async {
    try {
      final gender = Gender.values
          .firstWhere((e) => e.toString() == "Gender.${params.gender}");

      final password = bcrypt.generateHash(params.password);

      final user = await prisma.user.create(
        data: UserCreateInput(
          email: params.email,
          name: params.name,
          password: password,
          gender: gender,
        ),
      );

      return user.toJson();
    } on Exception catch (e) {
      print(e.toString());
      throw UserException(500, e.toString());
    } finally {
      await prisma.$disconnect();
    }
  }
}
