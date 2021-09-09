
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/ui/senha/senha_controller.dart';

class SenhaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SenhaController>(() {
      return SenhaController(repository: LoginRepository(apiClient: LoginApi()));
    });
  }  
}
   