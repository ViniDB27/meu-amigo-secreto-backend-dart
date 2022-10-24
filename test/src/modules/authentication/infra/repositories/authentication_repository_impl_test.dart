import 'package:backend/src/core/services/bcrypt/bcrypt_service.dart';
import 'package:backend/src/core/services/jwt/jwt_service.dart';
import 'package:backend/src/modules/authentication/domain/entities/account_entity.dart';
import 'package:backend/src/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:backend/src/modules/authentication/infra/datasources/account_datasource.dart';
import 'package:backend/src/modules/authentication/infra/repositories/authentication_repository_impl.dart';
import 'package:backend/src/modules/authentication/presentation/errors/authentication_error.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class BCryptServiceSpy extends Mock implements BCryptService {}

class JwtServiceSpy extends Mock implements JwtService {}

class AccountDatasourceSpy extends Mock implements AccountDatasource {}

void main() {
  late AuthenticationRepository repository;

  late BCryptService bcrypt;
  late JwtService jwt;
  late AccountDatasource datasource;

  setUp(() {
    bcrypt = BCryptServiceSpy();
    jwt = JwtServiceSpy();
    datasource = AccountDatasourceSpy();

    repository = AuthenticationRepositoryImpl(
      bcrypt: bcrypt,
      jwt: jwt,
      datasource: datasource,
    );
  });

  Map<String, dynamic> mockParams = {
    'email': 'teste@teste.com',
    'password': '123456'
  };

  group("signInWithEmailAndPassword", () {
    test(
        'Should AuthenticationRepositoryImpl.signInWithEmailAndPassword return AccountEntity if execute with success',
        () async {
      when(
        () =>
            bcrypt.checkHash(mockParams['password']!, mockParams['password']!),
      ).thenAnswer((_) => true);

      when(
        () => jwt.generateToken(mockParams, 'accessToken'),
      ).thenAnswer((_) => "accessToken");

      when(
        () => jwt.generateToken(mockParams, 'refreshToken'),
      ).thenAnswer((_) => "refreshToken");

      when(
        () => datasource.signInWithEmailAndPassword(
          email: mockParams['email']!,
          password: mockParams['password']!,
        ),
      ).thenAnswer((_) async => mockParams);

      final result = await repository.signInWithEmailAndPassword(
        email: mockParams['email']!,
        password: mockParams['password']!,
      );

      expect(result, isA<AccountEntity>());
    });

    test(
        'Should AuthenticationRepositoryImpl.signInWithEmailAndPassword throw AuthenticationException if bcrypt.checkHash return false',
        () async {

      when(
        () =>
            bcrypt.checkHash(mockParams['password']!, mockParams['password']!),
      ).thenAnswer((_) => false);

      when(
        () => jwt.generateToken(mockParams, 'accessToken'),
      ).thenAnswer((_) => "accessToken");

      when(
        () => jwt.generateToken(mockParams, 'refreshToken'),
      ).thenAnswer((_) => "refreshToken");

      when(
        () => datasource.signInWithEmailAndPassword(
          email: mockParams['email']!,
          password: mockParams['password']!,
        ),
      ).thenAnswer((_) async => mockParams);

      final result = repository.signInWithEmailAndPassword(
        email: mockParams['email']!,
        password: mockParams['password']!,
      );

      expect(result, throwsA(isA<AuthenticationException>()));
    });
  });
}
