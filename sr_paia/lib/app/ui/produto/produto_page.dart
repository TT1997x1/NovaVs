import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sr_paia/app/ui/produto/produto_controller.dart';

class ProdutoPage extends GetView<ProdutoController> {
//repository and controller  injection bindings
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produtos')),
      body: Container(
        child: GetX<ProdutoController>(
            //initState: (state) {
            //   Get.find<AnimaisController>().getAnimais(); },
            builder: (_) {
              return 
              _.produtoList.length < 1
              ? Center(child: CircularProgressIndicator(),)
              :
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_.produtoList[index].racao),
                    subtitle: Text(_.produtoList[index].descricao ),
                  );
                },
                itemCount: _.produtoList.length,
              );
            }),
      ),
    );
  }
}  