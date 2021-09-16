import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_paia/listaAnimais/animais_controller.dart';


class AnimaisPage extends GetView<AnimaisController> {
//repository and controller  injection bindings
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animais')),
      body: Container(
        child: GetX<AnimaisController>(
            initState: (state) { Get.find<AnimaisController>().toAnimais() ;},
            builder: (_) {
              return 
              _.animaisList.length < 1
              ? Center(child: CircularProgressIndicator(),)
              :
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_.animaisList[index].title),
                    subtitle: Text(_.animaisList[index].body),
                  );
                },
                itemCount: _.animaisList().length,
              );
            }),
      ),
    );
  }
}  