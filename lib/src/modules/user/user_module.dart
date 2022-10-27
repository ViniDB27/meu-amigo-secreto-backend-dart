import 'package:shelf_modular/shelf_modular.dart';

import 'presentation/controllers/implementation/authentication_controller_impl.dart';
import 'external/datasources/user_datasource_impl.dart';
import 'presentation/controllers/user_controller.dart';
import '../../core/services/prisma/prisma_client.dart';
import 'infra/repositories/user_repository_impl.dart';
import 'domain/repositories/user_repository.dart';
import 'infra/usecases/create_new_user_impl.dart';
import 'infra/datasources/user_datasource.dart';
import 'domain/usecases/create_new_user.dart';
import 'resource/user_resource.dart';
import 'validation/implementation/user_validate_impl.dart';
import 'validation/user_validate.dart';

class UserModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.instance<PrismaClient>(PrismaClient()),

        //datasource
        Bind.factory<UserDatasource>((i) => UserDatasourceImpl(i())),

        //repository
        Bind.factory<UserRepository>((i) => UserRepositoryImpl(i())),

        //usecase
        Bind.factory<CreateNewUser>((i) => CreateNewUserImpl(i())),

        // validate
        Bind.factory<UserValidate>((i) => UserValidateImpl()),

        // controller
        Bind.factory<UserController>(
            (i) => UserControllerImpl(usecase: i(), validate: i())),
      ];

  @override
  List<ModularRoute> get routes => [Route.resource(UserResource())];
}
