import 'dart:convert';

import 'package:backend/src/modules/authentication/presentation/errors/authentication_error.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf/shelf.dart';

import '../../../domain/usecases/signin_with_email_and_password.dart';
import '../../../validation/authentication_validate.dart';
import '../authentication_controller.dart';

class AuthenticationControllerImpl extends AuthenticationController {
  final SignInWithEmailAndPassword usecase;
  final AuthenticationValidate validate;

  AuthenticationControllerImpl({
    required this.usecase,
    required this.validate,
  });

  @override
  Future<Response> signInWithEmailAndPassword(
    ModularArguments arguments,
  ) async {
    try {
      final params = validate.validateRequestBody(arguments.data);

      final account = await usecase(params);

      return Response.ok(jsonEncode({
        "accessToken": account.accessToken,
        "refreshToken": account.refreshToken,
      }));
    } on AuthenticationException catch (e) {
      return Response(
        e.statusCode,
        body: e.toJson(),
      );
    }
  }
}
