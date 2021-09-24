import 'package:hasura_connect/hasura_connect.dart';
import 'package:sr_paia/app/model/agenda/agenda_model.dart';
import 'package:sr_paia/app/model/produto/produto_model.dart';

class AgendaRepository {
 final HasuraConnect _hasuraConnect;

  AgendaRepository(this._hasuraConnect);
  
  Future<List<AgendaModel>> getAgenda() async {
    List<AgendaModel> listAgenda = [];
    AgendaModel agendaModel;
    var query = '''
      query MyQuery {
  Agenda {
    id_agenda
    horario
    data
    animal
  }
}
    ''';

    var snapshot = await _hasuraConnect.query(query);
    for (var json in (snapshot['data'] ['Agenda']) as List) {
      agendaModel = AgendaModel.fromJson(json);
      listAgenda.add(agendaModel);
    }
    return listAgenda;
  }
  
  // novo método adicionado
  Future<String> addAgenda(String racao, String descricao) async {
    var query = """
      mutation addAnimais(\$racao:String!, \$description:String!) {
      insert_animais(objects: {raca: \$raca, descricao: \$descricao}) {
        affected_rows
        returning {
          name
        }
      }
    }
    """;
    var data = await _hasuraConnect.mutation(query, variables: {
      "racao": racao,
      "descricao": descricao,
    });
    return data["data"]['insert_produtos']['returning'][0]['racao'];
  }
}