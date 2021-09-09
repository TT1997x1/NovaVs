
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sr_paia/app/routes/app_routes.dart';
import 'package:sr_paia/app/ui/home/home_bindings.dart';
import 'package:sr_paia/app/ui/home/home_page.dart';
import 'package:sr_paia/app/ui/login/login_bindings.dart';
import 'package:sr_paia/app/ui/login/login_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];
}