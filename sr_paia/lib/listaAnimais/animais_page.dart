import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_paia/listaAnimais/animais_controller.dart';


class AnimaisPage extends GetView<AnimaisController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Precione o botão"),
            TextButton(
                onPressed: () => controller.getAnimais(), 
                child: Text("Cadestre novamente"))
          ],
        ),
      )
     ),
    );
   
            
  }
}  