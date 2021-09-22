import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_paia/app/ui/listaAnimais/animais_controller.dart';


class AnimaisPage extends GetView<AnimaisController> {
//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animais'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              List<PopupMenuEntry> list = [];
              list.add(
                PopupMenuItem(
                  child: Text(" Produtos"),
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
                  child: Text(" Carrinho "),
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
            icon: Icon(
              Icons.settings,
              size: 50,
              color: Colors.white,
            ),
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
        child: GetX<AnimaisController>(
            //initState: (state) {
            //   Get.find<AnimaisController>().getAnimais(); },
            builder: (_) {
          return _.animaisList.length < 1
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_.animaisList[index].nome),
                      subtitle: Text(_.animaisList[index].raca +
                          _.animaisList[index].descricao),
                      onTap: () => controller
                          .toCad_animais(_.animaisList[index].idAnimal),
                    );
                  },
                  itemCount: _.animaisList.length,
                );
        }),
      ),
    );
  }
}
