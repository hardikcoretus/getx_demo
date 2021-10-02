import 'package:flutter_getx_demo/controller/binding_one_controller.dart';
import 'package:flutter_getx_demo/controller/binding_two_controller.dart';
import 'package:get/get.dart';

class AllControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingOneController>(() => BindingOneController());
    Get.lazyPut<BindingTwoController>(() => BindingTwoController());
  }
}
