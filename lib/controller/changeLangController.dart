import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class ChangeLangController extends GetxController {
  
  void changeLanguage(var langCode, var countryCode) {
    var locale = Locale(langCode, countryCode);
    Get.updateLocale(locale);
  }
}
