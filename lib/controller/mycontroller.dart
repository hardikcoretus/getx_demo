import 'package:flutter_getx_demo/page/student.dart';
import 'package:get/get.dart';

class MyControllder extends GetxController {
  var student = Student();

  void convertToUpperCase() {
    student.name = student.name.toString().toUpperCase();
  }
}
