import 'package:get/get.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/model/animais/animais_model.dart';
import 'package:sr_paia/app/repository/animais_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class CadController extends ICustomController {
  final AnimaisRepository repository;
  CadController({required this.repository});

  var idAnimal;

  final _animal = AnimaisModel.obs;
  AnimaisModel get animaisModel => this._animal.value;
  set animaisModel(value) => this._animal.value = value;

  @override
  void onInit() {
    super.onInit();
    idAnimal = (Get.arguments['idAnimal']);
    getAnimaisId(idAnimal);
  }

  getAnimaisId(int idAnimal) async {
    var teste = await repository.getAnimaisId(idAnimal);
    _animal.value = teste;
  }

  toFormList() {
    Get.toNamed(Routes.FORM_LIST);
  }
}
