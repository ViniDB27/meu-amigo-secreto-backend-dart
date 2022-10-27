import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

import '../presentation/controllers/user_controller.dart';


class UserResource extends Resource {
  @override
  List<Route> get routes => [
        Route.post('/', _createNewUser),
      ];

  Future<Response> _createNewUser(
    Injector injector,
    ModularArguments arguments,
  ) async {
    final controller = injector.get<UserController>();

    return controller.createNewUser(arguments);
  }
}
