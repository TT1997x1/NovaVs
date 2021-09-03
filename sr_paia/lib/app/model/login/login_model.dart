import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        required this.strUsername,
        required this.strPassword,
    });

    String strUsername;
    String strPassword;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        strUsername: json["str_username"],
        strPassword: json["str_password"],
    );

    Map<String, dynamic> toJson() => {
        "str_username": strUsername,
        "str_password": strPassword,
    };
}

