import 'dart:convert';

import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf/shelf.dart';

import '../../../domain/usecases/create_new_user.dart';
import '../../../validation/user_validate.dart';
import '../../errors/user_error.dart';
import '../user_controller.dart';

class UserControllerImpl extends UserController {
  final CreateNewUser usecase;
  final UserValidate validate;

  UserControllerImpl({
    required this.usecase,
    required this.validate,
  });

  @override
  Future<Response> createNewUser(
    ModularArguments arguments,
  ) async {
    try {
      final params = validate.validateRequestBody(arguments.data);

      final user = await usecase(params);

      return Response.ok(jsonEncode(user));
    } on UserException catch (e) {
      return Response(
        e.statusCode,
        body: e.toJson(),
      );
    }
  }
}
