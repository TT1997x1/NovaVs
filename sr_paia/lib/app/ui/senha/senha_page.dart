import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'senha_controller.dart';

class SenhaPage extends GetView<SenhaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Insira o email cadastrado"),
            TextButton(
                onPressed: () => controller.toFormList(), child: Text("Cadestre novamente"))
          ],
        ),
      )),
    );
  }
}