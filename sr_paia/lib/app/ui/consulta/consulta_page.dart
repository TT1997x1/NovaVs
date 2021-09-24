import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sr_paia/app/ui/consulta/consulta_controller.dart';

class ConsultaPage extends GetView<ConsultaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento de consulta Presencial'),
        iconTheme: new IconThemeData(color: Colors.black),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              List<PopupMenuEntry> list = [];
              list.add(
                PopupMenuItem(
                  child: Text(" Conferir agendamento em andamento"),
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
                  child: Text(" Duvidas "),
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
            icon: Icon(Icons.pets, size: 50, color: Colors.black12),
            initialValue: 2,
            onCanceled: () {
              print("you");
            },
            onSelected: (value) {
              print("value:$value");
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: " Nome completo da pessoa",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: " Nome do animal",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: " Tipo animal",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: " Data da consulta",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: " Horario da consulta",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: " Cidade da consulta",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
             TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: " Nome da clinica ",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ), 
             TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: " Decrição da consulta",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ), 
            SizedBox(
              height: 30,
            ),
            Container(
                height: 40,
                child: TextButton(
                  child: Text(
                    "Confirma solicitação",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => controller.toFormList()(),
                )),
          ],
        ),
      ),
    );
  }
}
