import 'package:hasura_connect/hasura_connect.dart';
import 'package:sr_paia/app/model/produto/produto_model.dart';

class ProdutoRepository {
 final HasuraConnect _hasuraConnect;

  ProdutoRepository(this._hasuraConnect);
  
  Future<List<ProdutoModel>> getProduto() async {
    List<ProdutoModel> listProduto = [];
    ProdutoModel produtoModel;
    var query = '''
      query MyQuery {
   Produto {
    id_produto
    racao
    descricao 
  }
}
    ''';

    var snapshot = await _hasuraConnect.query(query);
    for (var json in (snapshot['data'] ['Produto']) as List) {
      produtoModel = ProdutoModel.fromJson(json);
      listProduto.add(produtoModel);
    }
    return listProduto;
  }
  
  // novo método adicionado
  Future<String> addAnimais(String racao, String descricao) async {
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