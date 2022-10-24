import 'package:shelf_modular/shelf_modular.dart';

import './modules/authentication/authentication_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        Route.module('/authentication', module: AuthenticationModule()),
      ];
}
