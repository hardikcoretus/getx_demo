import 'package:flutter_getx_demo/controller/binding_one_controller.dart';
import 'package:get/get.dart';

class MyAppControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implemnt dependencies
    Get.lazyPut<BindingOneController>(() => BindingOneController());
  }
}
