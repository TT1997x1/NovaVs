 import 'dart:convert';

import 'package:sr_paia/app/model/login/login_response_model.dart';

// ignore: non_constant_identifier_names
AnimaisResponseModel AnimaisReposeModelFromJson(String string ) => AnimaisResponseModel.fromJson(json.decode(string));

// ignore: non_constant_identifier_names
String AnimaisReposeModelToJson(AnimaisResponseModel data) => json.encode(data.toJson());

class AnimaisResponseModel {
  static var obs;

    AnimaisResponseModel({
        required this.data,
    });

    Data data;

    factory AnimaisResponseModel.fromJson(Map<String, dynamic> json) => AnimaisResponseModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

/* Class Data {
    Data({
        this.token,
    });

    String token;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
    }; */

 