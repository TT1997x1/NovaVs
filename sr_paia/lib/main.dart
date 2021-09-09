import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_paia/app/routes/app_page.dart';
import 'app/routes/app_routes.dart';
import 'app/ui/login/login_page.dart';

 void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
      //  initialBinding: LoginBinding(),
        initialRoute: Routes.INITIAL,
        defaultTransition: Transition.fade,
          theme: ThemeData(
      primarySwatch: Colors.amber,
      ),
        getPages: AppPages.pages,
        home:LoginPage(),
        locale: Locale('pt', 'BR'),
       // translationsKeys: AppTranslation.translations,
    )
  );
}
 
