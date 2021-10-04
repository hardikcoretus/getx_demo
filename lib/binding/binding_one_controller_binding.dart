import 'package:flutter_getx_demo/controller/binding_one_controller.dart';
import 'package:get/get.dart';

class BindingOneControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BindingOneController>(() => BindingOneController());
  }
}
