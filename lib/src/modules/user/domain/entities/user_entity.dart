enum Gender {
  MALE,
  FEMALE,
  NONBINARY,
}

class UserEntity {
  final String id;
  final String name;
  final String email;
  final String? photoUrl;
  final String? phone;
  final Gender gender;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    this.photoUrl,
    this.phone,
  });

  Map<String, dynamic> get toJson => {
        'id': id,
        'name': name,
        'email': email,
        'photoUrl': photoUrl,
        'phone': phone,
        'gender': gender.toString().replaceAll("Gender.", ""),
      };
}
