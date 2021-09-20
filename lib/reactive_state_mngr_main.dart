import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/reactivecontroller.dart';
import 'package:get/get.dart';

class ReactiveStateMngrMain extends StatelessWidget {
  ReactiveController reactiveController = Get.put(ReactiveController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reactive State Manager',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<ReactiveController>(
                init: ReactiveController(),
                builder: (cntr) {
                  return Text('Updated Value is ${cntr.counter}');
                }),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  //If Instance of controller not created at top
                  Get.find<ReactiveController>().increaseCounter();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
