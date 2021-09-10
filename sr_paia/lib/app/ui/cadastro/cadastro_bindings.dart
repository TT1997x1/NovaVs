
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/ui/cadastro/cadastro_controller.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(() {
      return CadastroController(repository: LoginRepository(apiClient: LoginApi()));
    });
  }  
}
   