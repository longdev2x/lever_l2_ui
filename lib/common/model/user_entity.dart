import 'package:uuid/uuid.dart';

final class UserEntity {
  final String id;
  final String name;
  final String? phone;
  final String? email;
  final String? avatar;
  final String? cover;
  final DateTime? birthday;
  final bool isOnline;
  final String? gender;

  UserEntity({
    String? id,
    required this.name,
    this.email,
    this.avatar,
    this.cover,
    this.birthday,
    this.gender,
    this.isOnline = false,
    this.phone,
  }) : id = id ?? const Uuid().v4();

  UserEntity copyWith({
    String? name,
    String? email,
    String? avatar,
    String? cover,
    DateTime? birthday,
    String? gender,
    String? phone,
  }) =>
      UserEntity(
        id: id,
        name: name ?? this.name,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
        cover: cover ?? this.cover,
        birthday: birthday ?? this.birthday,
        gender: gender ?? this.gender,
        phone: phone ?? phone,
      );

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        avatar: json['avatar'],
        cover: json['cover'],
        birthday: json['birthday'],
        gender: json['gender'],
        phone: json['phone'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'avatar': avatar,
        'cover' : cover,
        'birthday': birthday,
        'gender': gender,
        'phone': phone,
      };
}
