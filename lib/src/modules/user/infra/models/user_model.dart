import '../../domain/entities/user_entity.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String? photoUrl;
  final String? phone;
  final Gender gender;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    this.photoUrl,
    this.phone,
  });

    UserEntity get toEntity => UserEntity(
        id: id,
        name: name,
        email: email,
        gender: gender,
        photoUrl: photoUrl,
        phone: phone,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        gender:  Gender.values.firstWhere((element) => element.toString() == "Gender.${json['gender']}"),
        photoUrl: json['photoUrl'],
        phone: json['phone'],
      );


}
