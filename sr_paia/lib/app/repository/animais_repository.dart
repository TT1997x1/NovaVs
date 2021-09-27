// ignore: import_of_legacy_library_into_null_safe
import 'package:hasura_connect/hasura_connect.dart';
import 'package:sr_paia/app/model/animais/animais_model.dart';

class AnimaisRepository {
  final HasuraConnect _hasuraConnect;

  AnimaisRepository(this._hasuraConnect);

  Future<List<AnimaisModel>> getAnimais() async {
    List<AnimaisModel> listAnimais = [];
    AnimaisModel animaisModel;
    var query = '''
      query MyQuery {
  Animais {
    Id_Animais 
    nome 
    raca 
    cor  
    sexo
    descricao 
  }
}
    ''';

   // _hasuraConnect.headers!.entries(
   // {"x-hasura-admin-secret": "i8XQsYO19NP4BGk6IYHO41E6bFesa83f9TUNYnfuplEDknf4ajaXXwZ2V9wngFWc"}
   // );

    var snapshot = await _hasuraConnect.query(query);
    for (var json in (snapshot['data']['Animais']) as List) {
      animaisModel = AnimaisModel.fromJson(json);
      listAnimais.add(animaisModel);
    }
    return listAnimais;
  }

  Future<AnimaisModel> getAnimaisId(int idAnimais) async {
    idAnimais = 0;
    AnimaisModel animaisModel;
    var _query = '''
     query MyQuery {
  Animais(where: {Id_Animais: {_eq: 3}}) {
    Id_Animais
    nome
    raca
    cor
    sexo
    descricao
  }
}
  ''';

    var snapshot = await _hasuraConnect.query(_query);
    var json = snapshot['data']['Animais'];
    var _animaisModel = AnimaisModel.fromJson(json);
    return _animaisModel;
  }

  // _hasuraConnect.headers!.entries(
  // {"x-hasura-admin-secret": "i8XQsYO19NP4BGk6IYHO41E6bFesa83f9TUNYnfuplEDknf4ajaXXwZ2V9wngFWc"}
  // );

  // novo método adicionado
  Future<String> addAnimais(String name, String raca, String cor, String sexo,
      String descricao) async {
    var query = """
      mutation addAnimais(\$name:String!, \$raca:String!, \$cor:String!, \$sexo:String!, \$description:String!) {
      insert_animais(objects: {name: \$name, raca: \$raca, cor: \$cor, sexo: \$sexo, descricao: \$descricao}) {
        affected_rows
        returning {
          name
        }
      }
    }
    """;
    var data = await _hasuraConnect.mutation(query, variables: {
      "name": name,
      "raca": raca,
      "cor": cor,
      "sexo": sexo,
      "descricao": descricao,
    });
    return data["data"]['insert_animais']['returning'][0]['name'];
  }
}
