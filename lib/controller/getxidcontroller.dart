import 'package:get/get.dart';

class GetIdController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['txtCount']);
  }

//Best Approach For Init and Close
  @override
  void onInit() {
    // TODO: implement onInit
    print('Init Called');
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
