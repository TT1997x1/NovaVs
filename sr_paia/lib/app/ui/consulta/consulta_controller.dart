import 'package:get/get.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class ConsultaController extends ICustomController {
  final  LoginRepository repository;
  ConsultaController({required this.repository});
 

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