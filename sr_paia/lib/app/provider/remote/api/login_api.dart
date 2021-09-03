import 'package:sr_paia/app/model/login/login_model.dart';
import 'package:sr_paia/app/model/login/login_response_model.dart';
import 'package:sr_paia/app/provider/remote/api/config_api.dart';

const URL_LOGIN = '/login';

class LoginApi {
  postLogin(LoginModel loginModel) async {
    try {
      var response = await apiRest.post(URL_LOGIN, data: loginModel.toJson());
      if (response.statusCode == 200) {
        return LoginResponseModel.fromJson(response.data);
      } else
        print('erro -get-postLogin');
    } catch (_) {}
  }
}
