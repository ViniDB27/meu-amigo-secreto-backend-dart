import '../entities/account_entity.dart';

abstract class AuthenticationRepository {
  Future<AccountEntity> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
