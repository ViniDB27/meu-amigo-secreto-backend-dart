import 'package:shelf_modular/shelf_modular.dart';

import './resource/authentication_resource.dart';

class AuthenticationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        Route.resource(AuthenticationResource())
      ];
}
