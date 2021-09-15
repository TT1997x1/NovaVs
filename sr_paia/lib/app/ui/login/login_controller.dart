import 'package:get/get.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class LoginController extends ICustomController {


 final LoginRepository repository;
  // ignore: unnecessary_null_comparison
  LoginController({required this.repository}) : assert(repository != null);

  @override
  void onReady() {
    super.onReady();
   // if (isAuth) _toHome();
  }

  toHome() {
    Get.toNamed(Routes.HOME);
  
  }
  toRecupersenha() {
    Get.toNamed(Routes.SENHA);
    
  }
  toCadastro() {
    Get.toNamed(Routes.CADASTRO);
    
  }
  toPrincipal() {
    Get.toNamed(Routes.PRINCIPAL);
    
  }
  toAnimal() {
    Get.toNamed(Routes.ANIMAIS);
    
  }
}
