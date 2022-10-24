import '../models/account_model.dart';

abstract class AccountDatasource {
  Future<Map<String, dynamic>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
