import 'package:sr_paia/app/model/login/login_model.dart';
import 'package:sr_paia/app/provider/remote/api/login_api.dart';

class LoginRepository {
  final LoginApi apiClient;

  LoginRepository({required this.apiClient});

  postLogin() {
    return apiClient.postLogin(LoginModel(strPassword: '', strUsername: ''));
  }
}