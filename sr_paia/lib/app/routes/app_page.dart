
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sr_paia/app/routes/app_routes.dart';
import 'package:sr_paia/app/ui/cad_animais/cad_bindings.dart';
import 'package:sr_paia/app/ui/cad_animais/cad_page.dart';
import 'package:sr_paia/app/ui/cadastro/cadastro_bindings.dart';
import 'package:sr_paia/app/ui/cadastro/cadastro_page.dart';
import 'package:sr_paia/app/ui/consulta/consulta_bindings.dart';
import 'package:sr_paia/app/ui/consulta/consulta_page.dart';
import 'package:sr_paia/app/ui/consulta_on/consulta_on_bindings.dart';
import 'package:sr_paia/app/ui/consulta_on/consulta_on_page.dart';
import 'package:sr_paia/app/ui/home/home_bindings.dart';
import 'package:sr_paia/app/ui/home/home_page.dart';
import 'package:sr_paia/app/ui/listaAnimais/animais_bindings.dart';
import 'package:sr_paia/app/ui/listaAnimais/animais_page.dart';
import 'package:sr_paia/app/ui/login/login_bindings.dart';
import 'package:sr_paia/app/ui/login/login_page.dart';
import 'package:sr_paia/app/ui/principal/principal_bindigs.dart';
import 'package:sr_paia/app/ui/principal/principal_page.dart';
import 'package:sr_paia/app/ui/produto/produto_bindings.dart';
import 'package:sr_paia/app/ui/produto/produto_page.dart';
import 'package:sr_paia/app/ui/senha/senha_bindings.dart';
import 'package:sr_paia/app/ui/senha/senha_page.dart';


class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.SENHA, page: () => SenhaPage(), binding: SenhaBinding()),
    GetPage(name: Routes.CADASTRO, page: () => CadastroPage(), binding: CadastroBinding()),
    GetPage(name: Routes.PRINCIPAL, page: () => PrincipalPage(), binding: PrincipalBinding()),
    GetPage(name: Routes.ANIMAIS, page: () => AnimaisPage(), binding: AnimaisBinding()),
    GetPage(name: Routes.PRODUTO, page: () => ProdutoPage(), binding: ProdutoBinding()),
    GetPage(name: Routes.CAD_ANIMAIS, page: () => CadPage(), binding: CadBinding()),
    GetPage(name: Routes.CONSULTA_ON, page: () => Consulta_onPage(), binding: Consulta_onBinding()),
    GetPage(name: Routes.CONSULTA, page: () => ConsultaPage(), binding: ConsultaBinding())
  ];
}