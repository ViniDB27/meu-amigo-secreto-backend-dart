import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

import 'modules/user/user_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        Route.get('/', () => Response.ok('path -> /')),
        Route.module('/user', module: UserModule()),
      ];
}
