import 'dart:convert';

// ignore: non_constant_identifier_names
ProdutoModel ProdutoModelFromJson(String str) => ProdutoModel.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String ProdutoModelToJson(ProdutoModel data) => json.encode(data.toJson());


class  ProdutoModel {
  static var obs;

    ProdutoModel({
        required this.racao,
        required this.descricao,
    });

    String racao;
    String descricao;

    factory ProdutoModel.fromJson(Map<String, dynamic> json) => ProdutoModel(
        racao: json["racao"],
        descricao: json["descricao"],
        
    );

    Map<String, dynamic> toJson() => {
        "racao": racao,
        "descricao": descricao,
    };
    }