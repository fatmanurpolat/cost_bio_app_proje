import 'dart:convert';

class UserModel {
  final String? status;
  final int? code;
  final Data? data;
  final String? token;

  UserModel({
    this.status,
    this.code,
    this.data,
    this.token,
  });

  UserModel copyWith({
    String? status,
    int? code,
    Data? data,
    String? token,
  }) =>
      UserModel(
        status: status ?? this.status,
        code: code ?? this.code,
        data: data ?? this.data,
        token: token ?? this.token,
      );

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        code: json["code"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "data": data?.toJson(),
        "token": token,
      };
}

class Data {
  final User? user;

  Data({
    this.user,
  });

  Data copyWith({
    User? user,
  }) =>
      Data(
        user: user ?? this.user,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
      };
}

class User {
  final int? id;
  final String? name;
  final String? email;
  final dynamic emailVerifiedAt;
  final int? roleId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? password; // Password alanı eklenmiş
  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.roleId,
    this.createdAt,
    this.updatedAt,    this.password,

  });

  User copyWith({
    int? id,
    String? name,
    String? email,
        String? password,

    dynamic emailVerifiedAt,
    int? roleId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
                password: password ?? this.password,

        email: email ?? this.email,
        emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
        roleId: roleId ?? this.roleId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],

        
        emailVerifiedAt: json["email_verified_at"],
        roleId: json["role_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password":password,
        "email_verified_at": emailVerifiedAt,
        "role_id": roleId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
