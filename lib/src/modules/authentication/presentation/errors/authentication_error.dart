import 'dart:convert';

class AuthenticationException implements Exception {
  final String message;
  final StackTrace? stackTrace;
  final int statusCode;

  AuthenticationException(this.statusCode, this.message, [this.stackTrace]);

  String toJson() {
    return jsonEncode({'error': message});
  }

  @override
  String toString() => 'AuthException(message: $message, stackTrace: $stackTrace, statusCode: $statusCode)';
}
