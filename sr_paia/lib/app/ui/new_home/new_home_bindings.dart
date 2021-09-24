
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';
import 'package:sr_paia/app/repository/home_repository.dart';
import 'package:sr_paia/app/ui/home/home_controller.dart';
import 'package:sr_paia/app/ui/new_home/new_home_controller.dart';

class NewHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewHomeController>(() {
      return NewHomeController(repository: HomeRepository(apiClient: LoginApi()));

    });
     Get.lazyPut<HomeController>(() {
      return HomeController(repository: HomeRepository(apiClient: LoginApi()));
    }); 
  }  
}
   