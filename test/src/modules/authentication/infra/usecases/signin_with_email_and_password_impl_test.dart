import 'package:backend/src/modules/authentication/domain/entities/account_entity.dart';
import 'package:backend/src/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:backend/src/modules/authentication/domain/usecases/signin_with_email_and_password.dart';
import 'package:backend/src/modules/authentication/infra/usecases/signin_with_email_and_password_impl.dart';
import 'package:backend/src/modules/authentication/presentation/errors/authentication_error.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class AuthenticationRepositorySpy extends Mock
    implements AuthenticationRepository {}

void main() {
  late SignInWithEmailAndPassword usecase;
  late AuthenticationRepository repository;

  setUp(() {
    repository = AuthenticationRepositorySpy();
    usecase = SignInWithEmailAndPasswordImpl(repository);
  });

  const mockParams = {'email': 'teste@teste.com', 'password': '123456'};

  final mockUsecaseParams = SignInWithEmailAndPasswordParams(
    email: mockParams['email']!,
    password: mockParams['password']!,
  );

  final mockAccountEntity = AccountEntity(
    accessToken: "accessToken",
    refreshToken: "refreshToken",
  );

  test('Shoul SignInWithEmailAndPasswordImpl return AccountEntity if execute with success', () async {
    when(
      () => repository.signInWithEmailAndPassword(
        email: mockParams['email']!,
        password: mockParams['password']!,
      ),
    ).thenAnswer((_) async => mockAccountEntity);

    final result = await usecase(mockUsecaseParams);

    expect(result, isA<AccountEntity>());
  });

  test('Shoul SignInWithEmailAndPasswordImpl throws AuthenticationException if execute without success', () async {
    when(
      () => repository.signInWithEmailAndPassword(
        email: mockParams['email']!,
        password: mockParams['password']!,
      ),
    ).thenThrow(AuthenticationException(500, "Erro interno no servidor"));

    final result = usecase(mockUsecaseParams);

    expect(result, throwsA(isA<AuthenticationException>()));
  });
}
