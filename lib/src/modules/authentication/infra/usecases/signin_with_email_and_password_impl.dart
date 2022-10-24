import '../../domain/repositories/authentication_repository.dart';
import '../../domain/usecases/signin_with_email_and_password.dart';
import '../../domain/entities/account_entity.dart';

class SignInWithEmailAndPasswordImpl extends SignInWithEmailAndPassword {
  final AuthenticationRepository repository;

  SignInWithEmailAndPasswordImpl(this.repository);

  @override
  Future<AccountEntity> call(
    SignInWithEmailAndPasswordParams params,
  ) async {
    return repository.signInWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}
