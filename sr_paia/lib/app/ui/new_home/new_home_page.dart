import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_paia/app/ui/agenda/agenda_page.dart';
import 'package:sr_paia/app/ui/consulta/consulta_page.dart';
import 'package:sr_paia/app/ui/home/home_page.dart';
import 'package:sr_paia/app/ui/new_home/new_home_controller.dart';
import 'package:sr_paia/app/ui/principal/principal_page.dart';

class NewHomePage extends GetView<NewHomeController> {
  @override
  NewHomePage createState() => NewHomePage();


  final List<Widget> _telas = [
    HomePage(),
    AgendaPage(),
    ConsultaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        drawer: new Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Luan Henrique"),
              accountEmail: Text("Luan_henrique@hotmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.orangeAccent
                        : Colors.white,
                child: Text(
                  "LH",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.star),
                title: Text("Meu Historico"),
                subtitle: Text("..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                   controller.toHistorico();
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Perfil do usuário"),
                subtitle: Text("..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // controller.toConsulta();
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Solicitar consulta online"),
                subtitle: Text("..."),
                trailing: Icon(Icons.pending_actions_outlined),
                onTap: () {
                  controller.toConsulta_on();
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Solicitar consulta"),
                subtitle: Text("..."),
                trailing: Icon(Icons.pending_actions_outlined),
                onTap: () {
                  controller.toConsulta();
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Cadastrar animais"),
                subtitle: Text("..."),
                trailing: Icon(Icons.pending_actions_outlined),
                onTap: () {
                  controller.toAnimal();
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Produtos"),
                subtitle: Text("..."),
                trailing: Icon(Icons.pending_actions_outlined),
                onTap: () {
                  controller.toProduto();
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Finalizar"),
                subtitle: Text("..."),
                trailing: Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        )),
        appBar: AppBar(
          title: Text('Home'),
          iconTheme: new IconThemeData(color: Colors.black),
        ),
        body: _telas[controller.tabIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex.value,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "Agenda"),
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits_sharp),
                label: "Nova consulta"),
          ],
        )));
  }

  void onTabTapped(int index) {
    controller.changeTabIndex(index);
  }
}
