import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sr_paia/app/ui/historico/historico_controller.dart';
import 'package:sr_paia/app/ui/produto/produto_controller.dart';

class HistoricoPage extends GetView<HistoricoController> {
//repository and controller  injection bindings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              List<PopupMenuEntry> list = [];
              list.add(
                PopupMenuItem(
                  child: Text(" Cadastrar novo Produto "),
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
                  child: Text(" Editar Produto cadastrado "),
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
        child: GetX<ProdutoController>(
            //initState: (state) {
            //   Get.find<AnimaisController>().getAnimais(); },
            builder: (_) {
          return _.produtoList.length < 1
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_.produtoList[index].racao),
                      subtitle: Text(_.produtoList[index].descricao),
                    );
                  },
                  itemCount: _.produtoList.length,
                );
        }),
      ),
    );
  }
}
