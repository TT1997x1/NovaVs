import 'dart:convert';

LoginModel loginModelFromJson(String string) => LoginModel.fromJson(json.decode(string));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  static var obs;

    LoginModel({
     required this.Id_usuario,
     required this.Nome,
     required this.Email,
     required this.Senha,
    });
    
    int Id_usuario;
    String Nome;
    String Email;
    String Senha;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
       Id_usuario: json ["Id_usuario"],
        Nome: json ["Nome"],
        Email: json["Email"],
        Senha: json["Senha"],
    );

    Map<String, dynamic> toJson() => {
       "Id_usuario": Id_usuario,
        "Nome" : Nome,
        "Email": Email,
        "Senha": Senha,
    };
}

