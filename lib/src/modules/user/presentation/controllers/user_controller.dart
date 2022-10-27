import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf/shelf.dart';

abstract class UserController {
  Future<Response> createNewUser(ModularArguments arguments);
}
