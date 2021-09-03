
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/home_repository.dart';
import 'package:sr_paia/app/ui/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(repository: HomeRepository(apiClient: LoginApi()));
    });
  }  
}
   