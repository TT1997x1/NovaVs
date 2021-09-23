
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/ui/consulta_on/consulta_on_controller.dart';

class Consulta_onBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Consulta_onController>(() {
      return Consulta_onController(repository: LoginRepository(apiClient: LoginApi()));
    });
  }  
}
   