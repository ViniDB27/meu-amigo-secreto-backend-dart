import '../../../../core/services/bcrypt/bcrypt_service.dart';
import '../../../../core/services/jwt/jwt_service.dart';
import '../../domain/entities/account_entity.dart';
import '../../presentation/errors/authentication_error.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasources/account_datasource.dart';
import '../models/account_model.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final BCryptService bcrypt;
  final JwtService jwt;
  final AccountDatasource datasource;

  AuthenticationRepositoryImpl({
    required this.bcrypt,
    required this.jwt,
    required this.datasource,
  });

  @override
  Future<AccountEntity> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userMap = await datasource.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (!bcrypt.checkHash(password, userMap['password'])) {
      throw AuthenticationException(403, 'Email ou senha invalida');
    }

    final payload = userMap..remove('password');

    final account = _generateToken(payload);

    return account.toEntity;
  }

  AccountModel _generateToken(Map payload) {
    payload['exp'] = _determineExpiration(Duration(minutes: 10));

    final accessToken = jwt.generateToken(payload, 'accessToken');

    payload['exp'] = _determineExpiration(Duration(days: 3));
    final refreshToken = jwt.generateToken(payload, 'refreshToken');
    return AccountModel(accessToken: accessToken, refreshToken: refreshToken);
  }

  int _determineExpiration(Duration duration) {
    final expiresDate = DateTime.now().add(duration);
    final expiresIn =
        Duration(milliseconds: expiresDate.millisecondsSinceEpoch);
    return expiresIn.inSeconds;
  }
}
