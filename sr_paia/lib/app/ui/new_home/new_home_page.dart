import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sr_paia/app/ui/home/home_page.dart';
import 'package:sr_paia/app/ui/new_home/new_home_controller.dart';
import 'package:sr_paia/app/ui/produto/produto_page.dart';

class NewHomePage extends GetView<NewHomeController> {
  @override
  NewHomePage createState() => NewHomePage();

  int _indiceAtual = 0;
  final List<Widget> _telas = [
    HomePage(),
    HomePage(),
    ProdutoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Luan Henrique"),
            accountEmail: Text("Luan_henrique@hotmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
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
                debugPrint('toquei no drawer');
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
              title: Text("Solicitar consulta Presencial"),
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
      body:
       _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.tabIndex.value,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "Agenda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits_sharp),
              label: "Produtos"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
      controller.changeTabIndex(index);
         }
}
