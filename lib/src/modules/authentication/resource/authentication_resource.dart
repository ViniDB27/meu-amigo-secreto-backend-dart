import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

import '../presentation/controllers/authentication_controller.dart';

class AuthenticationResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get('/signin', _signInWithEmailAndPassword),
      ];

  Future<Response> _signInWithEmailAndPassword(
    Injector injector,
    ModularArguments arguments,
  ) async {
    final controller = injector.get<AuthenticationController>();

    return controller.signInWithEmailAndPassword(arguments);
  }
}
