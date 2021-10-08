import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/model/animais/animais_model.dart';
import 'package:sr_paia/app/repository/animais_repository.dart';
import 'package:get/get.dart';
import 'package:sr_paia/app/routes/app_routes.dart';
import 'package:sr_paia/app/ui/cad_animais/cad_page.dart';

class AnimaisController extends ICustomController {
  final AnimaisRepository repository;
  AnimaisController({required this.repository});

  final _animaisList = <AnimaisModel>[].obs;
  List<AnimaisModel> get animaisList => this._animaisList.value;
  set animaisList(value) => this._animaisList.value = value;

  //set listAnimais(List<AnimaisModel> listAnimais) {}
  @override
  void onInit() {
    super.onInit();
    getAnimais();
  }

  getAnimais() async {
    var teste = await repository.getAnimais();
    _animaisList.value = teste;
  }

  toAnimais() {
    Get.toNamed(Routes.ANIMAIS);
  }

  toProduto() {
    Get.toNamed(Routes.PRODUTO);
  }

  toCad_animais(int idAnimal) async {
    // Get.toNamed(Routes.CAD_ANIMAIS);
    Get.toNamed(Routes.CAD_ANIMAIS, parameters: {
     "idAnimal": idAnimal.toString(),
   // Get.to(CadPage(), arguments: idAnimal);
  });
}
  /*  AddAnimais() async {
    repository.addAnimais(name, raca, cor, sexo, descricao);
    getAnimais();
  }  */

}