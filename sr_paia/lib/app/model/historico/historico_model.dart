import 'dart:convert';

// ignore: non_constant_identifier_names
HistoricoModel ProdutoModelFromJson(String str) => HistoricoModel.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String HistoricoModelToJson(HistoricoModel data) => json.encode(data.toJson());


class  HistoricoModel {
  static var obs;

    HistoricoModel({
        required this.nome,
        required this.tipo_consulta,
    });

    String nome;
    String tipo_consulta;

    factory HistoricoModel.fromJson(Map<String, dynamic> json) => HistoricoModel(
        nome: json["nome"],
        tipo_consulta: json["tipo_consulta"],
        
    );

    Map<String, dynamic> toJson() => {
        "nome": nome,
        "tipo_consulta": tipo_consulta,
    };
    }