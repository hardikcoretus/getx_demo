import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/lifecyclecontroller.dart';
import 'package:get/get.dart';

class GetLifeCycleClass extends StatelessWidget {
  LifecycleController lifecyclerController = Get.put(LifecycleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX LifeCycle'),
      ),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<LifecycleController>(
              // initState: (data) => lifecyclerController.increment(),
              // dispose: (_) => lifecyclerController.cleanUpTask(),
              builder: (controller) {
                return Text(
                  'Value Is ${controller.count}',
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
