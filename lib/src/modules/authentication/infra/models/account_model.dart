import 'package:backend/src/modules/authentication/domain/entities/account_entity.dart';

class AccountModel {
  final String accessToken;
  final String refreshToken;

  AccountModel({
    required this.accessToken,
    required this.refreshToken,
  });

  AccountEntity get toEntity => AccountEntity(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
        accessToken: json['accessToken'],
        refreshToken: json['refreshToken'],
      );
}
