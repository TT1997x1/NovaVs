import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/ui/principal/principal_controller.dart';

class PrincipalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrincipalController>(() {
      return PrincipalController(repository: LoginRepository(apiClient: LoginApi()));
    });
  }  
}
   