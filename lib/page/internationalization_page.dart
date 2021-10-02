import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/controller/changeLangController.dart';
import 'package:flutter_getx_demo/other/messages.dart';
import 'package:get/get.dart';

class InternationalizationPage extends StatelessWidget {
  ChangeLangController controller = Get.put(ChangeLangController());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text('Internationalization'),
        ),
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'hello'.tr, //hello is key name from messages.dart file
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'lbl_name'.tr,
                      hintText: 'hint_enter_name'.tr,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.changeLanguage('hi', 'IN');
                    },
                    child: Text('Hindi')),
                const SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.changeLanguage('en', 'US');
                    },
                    child: Text('English')),
                const SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.changeLanguage('fr', 'FR');
                    },
                    child: Text('Franch')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
