import 'dart:convert';

// ignore: non_constant_identifier_names
AnimaisModel AnimaisModelFromJson(String str) => AnimaisModel.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String AnimaisModelToJson(AnimaisModel data) => json.encode(data.toJson());

class  AnimaisModel {
  static var obs;

    AnimaisModel({
        required this.nome,
        required this.raca,
        required this.cor,
        required this.sexo,
        required this.descricao,
    });

    String nome;
    String raca;
    String cor;
    String sexo;
    String descricao;

    factory AnimaisModel.fromJson(Map<String, dynamic> json) => AnimaisModel(
        nome: json["nome"],
        raca: json["raca"],
        cor: json["cor"],
        sexo: json["sexo"],
        descricao: json["descricao"],
        
    );

    Map<String, dynamic> toJson() => {
        "nome": nome,
        "raca": raca,
        "cor" : cor,
        "sexo": sexo,
        "descricao": descricao,
    };
    }