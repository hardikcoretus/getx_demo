import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/controller/getxidcontroller.dart';
import 'package:get/get.dart';

class GetxId extends StatelessWidget {
  GetIdController cntrlr = Get.put(GetIdController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GetX Unique ID',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<GetIdController>(
                id: 'txtCount',
                builder: (cntr) {
                  return Text('Updated Value is ${cntr.count}');
                }),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  //controller variable declared above
                  cntrlr.increment();

                  //If Instance of controller not created at top
                  // Get.find<ReactiveController>().increaseCounter();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
