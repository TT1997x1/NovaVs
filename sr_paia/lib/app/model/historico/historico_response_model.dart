 import 'dart:convert';

import 'package:sr_paia/app/model/login/login_response_model.dart';

// ignore: non_constant_identifier_names
HistoricoResponseModel HistoricoModelFromJson(String string ) => HistoricoResponseModel.fromJson(json.decode(string));

// ignore: non_constant_identifier_names
String HistoricoReposeModelToJson(HistoricoResponseModel data) => json.encode(data.toJson());

class HistoricoResponseModel {
  static var obs;

    HistoricoResponseModel({
        required this.data,
    });

    Data data;

    factory HistoricoResponseModel.fromJson(Map<String, dynamic> json) => HistoricoResponseModel(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}


 