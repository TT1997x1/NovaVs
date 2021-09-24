import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/model/agenda/agenda_model.dart';
import 'package:sr_paia/app/model/produto/produto_model.dart';
import 'package:sr_paia/app/repository/agenda_repository.dart';
import 'package:sr_paia/app/repository/produto_repository.dart';

class AgendaController extends ICustomController {
  final AgendaRepository repository;
  AgendaController({required this.repository});

  final _agendaList = <AgendaModel>[].obs;
  List<AgendaModel> get agendaList => this._agendaList.value;
  set agendaList(value) => this._agendaList.value = value;

  @override
  void onInit() {
    super.onInit();
    getAgenda();
  }

  getAgenda() async {
    var testes = await repository.getAgenda();
    _agendaList.value = testes;
  }

  
}
