import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
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
                  debugPrint('toquei no drawer');
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Perfil do usuário"),
                subtitle: Text("..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Solicitar consulta online"),
                subtitle: Text("..."),
                trailing: Icon(Icons.pending_actions_outlined),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Solicitar consulta Presencial"),
                subtitle: Text("..."),
                trailing: Icon(Icons.pending_actions_outlined),
                onTap: () {
                  Navigator.pop(context);
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
          /* actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                List<PopupMenuEntry> list = [];
                list.add(
                  PopupMenuItem(
                    child: Text(" Minha Conta"),
                    value: 1,
                  ),
                );
                list.add(
                  PopupMenuDivider(
                    height: 10,
                  ),
                );
                list.add(
                  PopupMenuItem(
                    child: Text(" Minhas consultas "),
                    value: 1,
                  ),
                );
                list.add(
                  PopupMenuDivider(
                    height: 10,
                  ),
                );
                list.add(
                  CheckedPopupMenuItem(
                    child: Text(
                      "Finalizar",
                      style: TextStyle(color: Colors.black),
                    ),
                    value: 2,
                    checked: true,
                  ),
                );
                return list;
              },
              icon: Icon(Icons.more_horiz, size: 50, color: Colors.black12),
              initialValue: 2,
              onCanceled: () {
                print("you");
              },
              onSelected: (value) {
                print("value:$value");
              },
            ),
          ], */
        ),
        body: Container(
          padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/app-logo.png"),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                child: Text(
                  "Animais",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => controller.toAnimal(),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text(
                  "Produtos",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => controller.toProduto(),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                child: Text(
                  "Agendar consulta",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => controller.toAnimal(),
              ),
            ],
          ),
        ));
  }
}
