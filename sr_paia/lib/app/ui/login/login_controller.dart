import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_paia/app/base/CustomController.dart';
import 'package:sr_paia/app/model/login/login_model.dart';
import 'package:sr_paia/app/repository/login_repository.dart';
import 'package:sr_paia/app/routes/app_routes.dart';

class LoginController extends ICustomController {
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
 // final _usuarioList = <LoginModel>[].obs;

  final LoginRepository repository;
  LoginController({required this.repository}) : assert(repository != null);

  //get controller => null;

  @override
  void onReady() {
    super.onReady();
    emailController.text = 'Luan_henriquex1@hotmail.com';
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  /* String validator(String value) {
    if (value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  } */

  void login() {
    if (loginFormKey.currentState!.validate()) {
      checkUser(emailController.text, passwordController.text).then((auth) {
        if (auth) {
          Get.snackbar('Login', 'Login com sucesso',
              onTap: toNewHome()
              );
        } else {
          Get.snackbar('Login', 'Invalido email ou senha');
        }
        emailController.clear();
        passwordController.clear();
      });
    }
  }

  // Api Simulation
  Future<bool> checkUser(String email, String senha) async {
  
   LoginModel usuario = await  repository.getUsuarioEmail(email);
    
    if (senha == usuario.Senha) {
      return Future.value(true);
    }
    return Future.value(false);
  }
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

toNewHome() {
  Get.toNamed(Routes.NEW_HOME);
}
