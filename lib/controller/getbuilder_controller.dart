import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  var count = 0;

  void incrementCounter() {
    count++;
    update(); //Will Update count varibale on ui
  }

  void decrementCounter() {
    count--;
    update(); //Will Update count varibale on ui
  }
}
