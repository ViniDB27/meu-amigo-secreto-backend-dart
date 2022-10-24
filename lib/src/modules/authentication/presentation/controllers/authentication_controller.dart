import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf/shelf.dart';

abstract class AuthenticationController {
  Future<Response> signInWithEmailAndPassword(
    ModularArguments arguments,
  );
}
