 import 'dart:convert';

import 'package:sr_paia/app/model/login/login_response_model.dart';

// ignore: non_constant_identifier_names
AgendaResponseModel AgendaReposeModelFromJson(String string ) => AgendaResponseModel.fromJson(json.decode(string));

// ignore: non_constant_identifier_names
String AgendaReposeModelToJson(AgendaResponseModel data) => json.encode(data.toJson());

class AgendaResponseModel {
  static var obs;

    AgendaResponseModel({
        required this.data,
    });

    Data data;

    factory AgendaResponseModel.fromJson(Map<String, dynamic> json) => AgendaResponseModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}


 