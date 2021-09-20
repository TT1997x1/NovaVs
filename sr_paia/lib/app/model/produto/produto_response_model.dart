 import 'dart:convert';

import 'package:sr_paia/app/model/login/login_response_model.dart';

// ignore: non_constant_identifier_names
ProdutoResponseModel ProdutoReposeModelFromJson(String string ) => ProdutoResponseModel.fromJson(json.decode(string));

// ignore: non_constant_identifier_names
String ProdutoReposeModelToJson(ProdutoResponseModel data) => json.encode(data.toJson());

class ProdutoResponseModel {
  static var obs;

    ProdutoResponseModel({
        required this.data,
    });

    Data data;

    factory ProdutoResponseModel.fromJson(Map<String, dynamic> json) => ProdutoResponseModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}


 