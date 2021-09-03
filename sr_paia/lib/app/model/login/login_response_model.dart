import 'dart:convert';

LoginResponseModel loginReposeModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginReposeModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
    LoginResponseModel({
        required this.data,
    });

    Data data;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.token,
    });

    String token;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
    };
}
