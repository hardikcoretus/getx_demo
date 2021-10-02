import 'package:get/get.dart';

class BindingTwoController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}
