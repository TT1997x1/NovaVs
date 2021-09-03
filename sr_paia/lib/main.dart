import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_routes.dart';
import 'app/ui/login/login_page.dart';

 void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
      //  initialBinding: LoginBinding(),
        initialRoute: Routes.INITIAL,
      //  theme: appThemeData,
        defaultTransition: Transition.fade,
       // getPages: AppPages.pages,
        home:LoginPage(),
        locale: Locale('pt', 'BR'),
       // translationsKeys: AppTranslation.translations,
    )
  );
}
 
