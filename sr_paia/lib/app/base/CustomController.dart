import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sr_paia/app/base/model/MessageGenericObject.dart';
//import 'package:getx_pattern/app/base/model/MessageGenericObject.dart';

abstract class ICustomController extends GetxController {

  final RxBool showLoading = false.obs;
  set showLoading(value) => this.showLoading.value = value;

  final message = MessageGenericObject().obs;
  set message(value) => this.message.value = value;
  }