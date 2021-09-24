import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/model/historico/historico_model.dart';
import 'package:sr_paia/app/model/produto/produto_model.dart';
import 'package:sr_paia/app/repository/historico_repository.dart';
import 'package:sr_paia/app/repository/produto_repository.dart';

class HistoricoController extends ICustomController {
  final HistoricoRepository repository;
  HistoricoController({required this.repository});

  final _historicoList = <HistoricoModel>[].obs;
  List<HistoricoModel> get produtoList => this._historicoList.value;
  set historicoList(value) => this._historicoList.value = value;

   @override
  void onInit() {
    super.onInit();
    getHistorico();
  }  

   getHistorico() async {
    var testes = await repository.getHistorico();
    _historicoList.value = testes;
  } 

  
}
