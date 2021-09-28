import 'package:get/get.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/repository/home_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class NewHomeController extends ICustomController {
  final HomeRepository repository;
  NewHomeController({required this.repository});

   var tabIndex = 0.obs;

   
   void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  toFormList() {
    Get.toNamed(Routes.FORM_LIST);
  }

  toAnimal() {
    Get.toNamed(Routes.ANIMAIS);
  }

  toProduto() {
    Get.toNamed(Routes.PRODUTO);
  }

  // ignore: non_constant_identifier_names
  toConsulta_on() {
    Get.toNamed(Routes.CONSULTA_ON);
  }

  toConsulta() {
    Get.toNamed(Routes.CONSULTA);
  }
  toAgenda() {
    Get.toNamed(Routes.AGENDA);
  }
  toHistorico() {
    Get.toNamed(Routes.HISTORICO);
  }
}
