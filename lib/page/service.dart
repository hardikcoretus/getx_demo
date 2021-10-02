import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
This class similar like GetxController
It Shares the same life cycler (onInit(), onReady(), onClose())
It just notify dependency injection that this subclass is not be removed from the memory

When you need some logic run through out the app that time instead of write business login in getxcontroller 
we can writr logic in GetXService Class

*/

class GetXServices extends GetxService {
  Future<void> incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('pressed $counter times.');
    await prefs.setInt('counter', counter);
  }
}
