import 'package:flutter_getx_demo/student.dart';
import 'package:get/get.dart';

class MyControllder extends GetxController {
  var student = Student();

  void convertToUpperCase() {
    student.name = student.name.toString().toUpperCase();
  }
}
