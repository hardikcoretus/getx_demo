import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/controller/getbuilder_controller.dart';
import 'package:get/get.dart';

class GetBuilderStateMainManager extends StatelessWidget {
  //When you are not using init method with GetBuilder
  GetBuilderController getBuilderController = Get.put(GetBuilderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetBuilder'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<GetBuilderController>(
                //When you initialise instance at top no need of init property
                // init: GetBuilderController(),
                builder: (cntrlr) {
              // return Text('Value if Variable is ${cntrlr.count}');
              return Text('Value if Variable is ${getBuilderController.count}');
            }),
            const SizedBox(
              height: 15.0,
            ),
            TextButton(
                onPressed: () {
                  //If instace of controller is initialize at top
                  getBuilderController.incrementCounter();

                  // If instance of controller not initialize at top
                  // Get.find<GetBuilderController>().incrementCounter();
                },
                child: Text('Click To Increment')),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  // If instance of controller not initialize at top
                  Get.find<GetBuilderController>().decrementCounter();
                },
                child: Text('Click To Decrement'))
          ],
        ),
      ),
    );
  }
}
