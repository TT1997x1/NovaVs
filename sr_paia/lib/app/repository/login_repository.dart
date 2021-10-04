import 'package:hasura_connect/hasura_connect.dart';
import 'package:sr_paia/app/model/login/login_model.dart';

class LoginRepository {
  /*  final LoginApi apiClient;

  LoginRepository({required this.apiClient});

  postLogin() {
    return apiClient.postLogin(LoginModel(strPassword: '', strUsername: ''));
  }) */
  final HasuraConnect _hasuraConnect;

  LoginRepository(this._hasuraConnect);

  Future<List<LoginModel>> getUsuario() async {
    List<LoginModel> listUsuario = [];
    LoginModel loginModel;
    var query = '''
      query MyQuery {
   Usuario {
    Id_usuario
    Nome
    Email
    Senha
  }
}

    ''';

    var snapshot = await _hasuraConnect.query(query);
    for (var json in (snapshot['data']['Usuario']) as List) {
      loginModel = LoginModel.fromJson(json);
      listUsuario.add(loginModel);
    }
    return listUsuario;
  }
  Future<LoginModel> getUsuarioEmail(String email) async {
    //email = "" ;
    LoginModel loginModel;
    var _query = '''
     query MyQuery {
  Usuario (where: { Email: {_eq: "$email"}}){
    Id_usuario
    Nome
    Email
    Senha
  }
}

  ''';

    var snapshot = await _hasuraConnect.query(_query);
    var json = snapshot['data']['Usuario'][0];
    var _loginModel = LoginModel.fromJson(json);
    return _loginModel;
  }

  // novo método adicionado
  Future<String> addUsuario(String nome, String email, String senha) async {
    var query = """
      mutation addUsuario(\$nome:String!, \$email:String!, \$senha:String!) {
      insert_usuario(objects: {nome: \$nome, email: \$email, senha: \$senha}) {
        affected_rows
        returning {
          nome
        }
      }
    }
    """;
    var data = await _hasuraConnect.mutation(query, variables: {
      "nome": nome,
      "email": email,
      "senha": senha,
    });
    return data["data"]['insert_usuario']['returning'][0]['email']['senha'];
  }
}
