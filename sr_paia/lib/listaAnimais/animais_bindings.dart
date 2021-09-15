import 'package:get/get.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:hasura/hasura.dart';
import 'package:sr_paia/app/repository/animais_repository.dart';

import 'animais_controller.dart';

class AnimaisBinding implements Bindings {
  //HasuraConnect get hasuraConnect("https://clear-grubworm-88.hasura.app/v1/graphql");

  @override
  void dependencies() {
    Get.lazyPut<AnimaisController>(() {
      return AnimaisController(
          repository:
              AnimaisRepository(HasuraConnect(
                "https://clear-grubworm-88.hasura.app/v1/graphql")
              )

      );
    });
  }
}