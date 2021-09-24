import 'dart:convert';

// ignore: non_constant_identifier_names
AgendaModel ProdutoModelFromJson(String str) => AgendaModel.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String AgendaModelToJson(AgendaModel data) => json.encode(data.toJson());


class  AgendaModel {
  static var obs;

    AgendaModel({
        required this.animal,
        required this.data,
        required this.horario,
    });

    String animal;
    String data;
    String horario;

    factory AgendaModel.fromJson(Map<String, dynamic> json) => AgendaModel(
        animal: json["animal"],
        data: json["data"],
        horario: json["horario"],
        
    );

    Map<String, dynamic> toJson() => {
        "animal": animal,
        "data": data,
        "horario": horario,
    };
    }