import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/ui/login/login_controller.dart';
import 'package:get/get.dart';


class LoginBinding implements Bindings{
 @override
  void dependencies() {
    Get.lazyPut<LoginController>(() {
      return LoginController(repository:
       LoginRepository(apiClient: LoginApi()));
    });
  }  
  
}