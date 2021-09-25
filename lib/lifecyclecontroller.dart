import 'package:get/get.dart';

class LifecycleController extends GetxController {
  var count = 0;

  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print('Clean up task');
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
