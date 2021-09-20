import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:sr_paia/app/repository/produto_repository.dart';
import 'package:sr_paia/app/ui/produto/produto_controller.dart';

class ProdutoBinding implements Bindings {
  //HasuraConnect get hasuraConnect("https://clear-grubworm-88.hasura.app/v1/graphql");

  @override
  void dependencies() {

var headers = {"x-hasura-admin-secret": "i8XQsYO19NP4BGk6IYHO41E6bFesa83f9TUNYnfuplEDknf4ajaXXwZ2V9wngFWc"};
var url = "https://clear-grubworm-88.hasura.app/v1/graphql";
HasuraConnect hasuraConnect = HasuraConnect(url, headers: headers);


 

    Get.lazyPut<ProdutoController>(() {
      return ProdutoController(
          repository: ProdutoRepository(hasuraConnect));
    });
  }
}