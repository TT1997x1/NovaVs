import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/model/produto/produto_model.dart';
import 'package:sr_paia/app/repository/produto_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class ProdutoController extends ICustomController {
  final ProdutoRepository repository;
  ProdutoController({required this.repository});

  final _produtoList = <ProdutoModel>[].obs;
  List<ProdutoModel> get produtoList => this._produtoList.value;
  set produtoList(value) => this._produtoList.value = value;

  @override
  void onInit() {
    super.onInit();
    getProduto();
  }

  getProduto() async {
    var testes = await repository.getProduto();
    _produtoList.value = testes;
  }

  
}
