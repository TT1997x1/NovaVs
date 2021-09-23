
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/ui/consulta/consulta_controller.dart';

class ConsultaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultaController>(() {
      return ConsultaController(repository: LoginRepository(apiClient: LoginApi()));
    });
  }  
}
   