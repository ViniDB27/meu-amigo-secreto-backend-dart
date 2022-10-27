import 'package:backend/src/core/services/dot_env/dot_env_service.dart';
import 'package:backend/src/core/services/jwt/jwt_service_impl.dart';
import 'package:test/test.dart';

void main() {
  group("JwtServiceImpl", () {
    test('jwt create', () async {
      final dotEnvService = DotEnvService(mocks: {
        'JWT_KEY': 'fhsiguhoiaughr4eoiugehggoiusehgo',
      });
      final jwt = JwtServiceImpl(dotEnvService);

      final expiresDate = DateTime.now().add(Duration(seconds: 30));
      final expiresIn =
          Duration(milliseconds: expiresDate.millisecondsSinceEpoch).inSeconds;

      final token = jwt.generateToken({
        'id': 1,
        'name': 'user',
        'email': 'teste@teste.com',
        'exp': expiresIn,
      }, 'accessToken');
    });

    test('jwt verify', () async {
      final dotEnvService = DotEnvService(mocks: {
        'JWT_KEY': 'fhsiguhoiaughr4eoiugehggoiusehgo',
      });
      final jwt = JwtServiceImpl(dotEnvService);

      final expiresDate = DateTime.now().add(Duration(seconds: 30));
      final expiresIn =
          Duration(milliseconds: expiresDate.millisecondsSinceEpoch).inSeconds;

      final token = jwt.generateToken({
        'id': 1,
        'name': 'user',
        'email': 'teste@teste.com',
        'exp': expiresIn,
      }, 'accessToken');

      jwt.verifyToken(token, "accessToken");
    });

    test('jwt payload', () async {
      final dotEnvService = DotEnvService(mocks: {
        'JWT_KEY': 'fhsiguhoiaughr4eoiugehggoiusehgo',
      });
      final jwt = JwtServiceImpl(dotEnvService);

      final payload = jwt.getPayload(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicm9sZSI6InVzZXIiLCJleHAiOjE2NTgzMzI4OTQsImlhdCI6MTY1ODMzMjg2NCwiYXVkIjoiYWNjZXNzVG9rZW4ifQ.31oGSj4Wu5HwooeU16E9yclLDRZWOH96az-xmPbTjLU',
      );
    });
  });
}
