import 'package:hasura_connect/hasura_connect.dart';
import 'package:sr_paia/app/model/historico/historico_model.dart';
import 'package:sr_paia/app/model/produto/produto_model.dart';

class HistoricoRepository {
 final HasuraConnect _hasuraConnect;

  HistoricoRepository(this._hasuraConnect);
  
  Future<List<HistoricoModel>> getHistorico() async {
    List<HistoricoModel> listHistorico = [];
    HistoricoModel historicoModel;
    var query = '''
      Historico {
    id_historico
    nome
    tipo_consulta
  }
}
    ''';

    var snapshot = await _hasuraConnect.query(query);
    for (var json in (snapshot['data'] ['Historico']) as List) {
      historicoModel = HistoricoModel.fromJson(json);
      listHistorico.add(historicoModel);
    }
    return listHistorico;
  }
  
  // novo método adicionado
  Future<String> addHistorico(String nome, String tipo_consulta) async {
    var query = """
      mutation addHistorico(\$nome:String!, \$tipo_consulta:String!) {
      insert_historico(objects: {nome: \$nome, tipo_consulta: \$tipo_consulta}) {
        affected_rows
        returning {
          name
        }
      }
    }
    """;
    var data = await _hasuraConnect.mutation(query, variables: {
      "nome": nome,
      "tipo_consulta": tipo_consulta,
    });
    return data["data"]['insert_historico']['returning'][0]['nome'];
  }
}