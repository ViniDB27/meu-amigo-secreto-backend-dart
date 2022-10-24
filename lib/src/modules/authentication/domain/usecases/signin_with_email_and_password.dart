import '../entities/account_entity.dart';

abstract class SignInWithEmailAndPassword {
  Future<AccountEntity> call(SignInWithEmailAndPasswordParams params);
}

class SignInWithEmailAndPasswordParams {
  final String email;
  final String password;

  SignInWithEmailAndPasswordParams({
    required this.email,
    required this.password,
  });
}
