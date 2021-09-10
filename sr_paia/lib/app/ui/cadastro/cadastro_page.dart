import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sr_paia/app/ui/cadastro/cadastro_controller.dart';



class CadastroPage extends GetView<CadastroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40),
        color: Colors.white,
        child: ListView(
        children: <Widget> [
        SizedBox(
          width: 128,
          height: 128,
          child: Image.asset("assets/app-logo.png"),
        ),
        TextFormField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: " Digite um e - mail",
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
            labelText: " Nome Completo",
            labelStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          style: TextStyle (fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
           autofocus: true,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            labelText: " Digite uma senha",
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
            labelText: " Digite novamente a senha",
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
              child:  TextButton(
                child: Text(
                  "Salvar cadastro",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => controller.toFormList()(),
              )
            ),
        ],
        ),
      ),
    );

  }
}