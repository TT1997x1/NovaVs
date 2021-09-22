import 'package:get/get.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class CadastroController extends ICustomController {
  final  LoginRepository repository;
  CadastroController({required this.repository});
 

  @override
  void onInit() {
    super.onInit();
  }

   toFormList() {
    Get.toNamed(Routes.FORM_LIST);
  } 
  toPrincipal() {
    Get.toNamed(Routes.PRINCIPAL);
    
  }
  toProduto() {
    Get.toNamed(Routes.PRODUTO);
  }
  }