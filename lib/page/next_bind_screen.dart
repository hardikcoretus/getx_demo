import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/controller/binding_one_controller.dart';
import 'package:get/get.dart';

class NextBindScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                  'Updated Value is ${Get.find<BindingOneController>().count}'),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.find<BindingOneController>().increment();
                    },
                    child: Text('Increment')),
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Go To Back'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
