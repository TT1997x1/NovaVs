import 'package:get/get.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class LoginController extends  ICustomController {

   final LoginRepository repository;
  LoginController({required this.repository}); 


   toHome() {
    Get.toNamed(Routes.HOME); 
  }
  }
